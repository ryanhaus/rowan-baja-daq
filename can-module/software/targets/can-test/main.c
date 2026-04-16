#include <stddef.h>
#include <stdbool.h>
#include <stdlib.h>
#include <definitions.h>
#include <board_led.h>

#define WRITE_ID(id) (id << 18)

int main()
{
    // Initialize system & systick
    SYS_Initialize(NULL);
    SYSTICK_TimerStart();

    // Initialize CAN
    CAN0_Initialize();

    static uint8_t can0_message_ram[CAN0_MESSAGE_RAM_CONFIG_SIZE] __attribute__((aligned (32)));
    CAN0_MessageRAMConfigSet(can0_message_ram);

    static uint8_t can0_tx_fifo[CAN0_TX_FIFO_BUFFER_SIZE];
    CAN_TX_BUFFER* tx_buffer = (CAN_TX_BUFFER*)can0_tx_fifo;

    // Control flags for CAN transceiver
    GPIO_CAN_NSIL_Set();
    GPIO_CAN_STANDBY_Clear();

    // build CAN packet
    memset(can0_tx_fifo, 0x00, CAN0_TX_FIFO_BUFFER_ELEMENT_SIZE); // clear TX fifo
    tx_buffer->id = WRITE_ID(0x469);
    tx_buffer->dlc = 8; // 8 bytes
    tx_buffer->fdf = 0;
    tx_buffer->brs = 0;

    uint32_t data[] = { 0xDEADBEEF, 0x12345678 };
    memcpy(tx_buffer->data, (uint8_t*)data, sizeof(data));

    // main loop: send CAN packets every 100 ms, blink LED while transmitting
    while (true)
    {
        LED_On();
        bool can_success = CAN0_MessageTransmitFifo(1, tx_buffer);

        SYSTICK_DelayMs(50);
        LED_Off();
        SYSTICK_DelayMs(can_success ? 100 : 500);
    }

    return -1;
}
