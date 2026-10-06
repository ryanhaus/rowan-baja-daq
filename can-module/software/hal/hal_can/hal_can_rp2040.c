#include "hal_can.h"
#include <string.h>
#include <pico/stdlib.h>
#include <hardware/clocks.h>
#include <hardware/irq.h>
#include <can2040.h>

#define CAN_RX_PIN 2
#define CAN_TX_PIN 3
#define CAN_BITRATE 1000000
#define CAN_QUEUE_SIZE 32

static struct
{
    uint32_t pull_pos;
    volatile uint32_t push_pos;
    hal_can_frame_t queue[CAN_QUEUE_SIZE];
} can_rx_queue;

static struct can2040 cbus;

static void can_rx_callback(struct can2040* cd, uint32_t notify, struct can2040_msg* msg)
{
    (void)cd;

    if (notify == CAN2040_NOTIFY_RX)
    {
        uint32_t push_pos = can_rx_queue.push_pos;
        uint32_t pull_pos = can_rx_queue.pull_pos;

        if (push_pos + 1 == pull_pos || (push_pos + 1 - pull_pos == CAN_QUEUE_SIZE))
        {
            return;
        }

        hal_can_frame_t* frame = &can_rx_queue.queue[push_pos % CAN_QUEUE_SIZE];

        frame->is_extended = ((msg->id & CAN2040_ID_EFF) != 0);

        if (frame->is_extended)
        {
            frame->id = msg->id & 0x1FFFFFFF;
        }
        else
        {
            frame->id = msg->id & 0x7FF;
        }

        frame->size = (msg->dlc > 8) ? 8 : msg->dlc;
        memcpy(frame->data, msg->data, frame->size);

        can_rx_queue.push_pos = push_pos + 1;
    }
}

static void pio_irq_handler(void)
{
    can2040_pio_irq_handler(&cbus);
}

void hal_can_init(void)
{
    can_rx_queue.pull_pos = 0;
    can_rx_queue.push_pos = 0;

    can2040_setup(&cbus, 0);
    can2040_callback_config(&cbus, can_rx_callback);

    irq_set_exclusive_handler(PIO0_IRQ_0, pio_irq_handler);
    irq_set_priority(PIO0_IRQ_0, 1);
    irq_set_enabled(PIO0_IRQ_0, true);

    can2040_start(&cbus, clock_get_hz(clk_sys), CAN_BITRATE, CAN_RX_PIN, CAN_TX_PIN);
}

bool hal_can_send(uint32_t id, const uint8_t* data, size_t size)
{
    struct can2040_msg msg;
    memset(&msg, 0, sizeof(msg));

    if (id > 0x7FF)
    {
        msg.id = (id & 0x1FFFFFFF) | CAN2040_ID_EFF;
    }
    else
    {
        msg.id = id & 0x7FF;
    }

    msg.dlc = (size > 8) ? 8 : size;
    memcpy(msg.data, data, msg.dlc);

    return (can2040_transmit(&cbus, &msg) == 0);
}

size_t hal_can_available(void)
{
    uint32_t push = can_rx_queue.push_pos;
    uint32_t pull = can_rx_queue.pull_pos;

    return (size_t)(push - pull);
}

bool hal_can_receive(hal_can_frame_t* frame)
{
    if (frame == NULL)
    {
        return false;
    }

    uint32_t push = can_rx_queue.push_pos;
    uint32_t pull = can_rx_queue.pull_pos;

    if (push == pull)
    {
        return false;
    }

    *frame = can_rx_queue.queue[pull % CAN_QUEUE_SIZE];
    can_rx_queue.pull_pos = pull + 1;

    return true;
}
