#include "hal_can.h"
#include <definitions.h>
#include <string.h>

void hal_can_init()
{
    CAN0_Initialize();

    static uint8_t can0_message_ram[CAN0_MESSAGE_RAM_CONFIG_SIZE] __attribute__((aligned (32)));
    CAN0_MessageRAMConfigSet(can0_message_ram);

    // Control flags for CAN transceiver (specific to this board)
    GPIO_CAN_NSIL_Set();
    GPIO_CAN_STANDBY_Clear();
}

bool hal_can_send(uint32_t id, const uint8_t* data, size_t size)
{
    static uint8_t can0_tx_fifo[CAN0_TX_FIFO_BUFFER_SIZE];
    CAN_TX_BUFFER* tx_buffer = (CAN_TX_BUFFER*)can0_tx_fifo;

    memset(can0_tx_fifo, 0x00, CAN0_TX_FIFO_BUFFER_ELEMENT_SIZE);
    tx_buffer->id = (id << 18);
    tx_buffer->dlc = (size > 8) ? 8 : size;
    
    memcpy(tx_buffer->data, data, tx_buffer->dlc);

    return CAN0_MessageTransmitFifo(1, tx_buffer);
}

size_t hal_can_available(void)
{
    return (size_t)CAN0_RxFifoFillLevelGet(CAN_RX_FIFO_0);
}

bool hal_can_receive(hal_can_frame_t* frame)
{
    if (frame == NULL)
    {
        return false;
    }

    if (CAN0_RxFifoFillLevelGet(CAN_RX_FIFO_0) == 0U)
    {
        return false;
    }

    static uint8_t can0_rx_fifo[CAN0_RX_FIFO0_ELEMENT_SIZE];
    CAN_RX_BUFFER* rx_buffer = (CAN_RX_BUFFER*)can0_rx_fifo;

    if (!CAN0_MessageReceiveFifo(CAN_RX_FIFO_0, 1, rx_buffer))
    {
        return false;
    }

    frame->is_extended = (rx_buffer->xtd != 0U);
    if (frame->is_extended)
    {
        frame->id = rx_buffer->id;
    }
    else
    {
        frame->id = (rx_buffer->id >> 18) & 0x7FF;
    }

    frame->size = (rx_buffer->dlc > 8) ? 8 : rx_buffer->dlc;
    memcpy(frame->data, rx_buffer->data, frame->size);

    return true;
}
