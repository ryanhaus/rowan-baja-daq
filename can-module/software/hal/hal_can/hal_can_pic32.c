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
    tx_buffer->id = (id << 18); // Standard ID shift for this peripheral
    tx_buffer->dlc = (size > 8) ? 8 : size;
    
    memcpy(tx_buffer->data, data, tx_buffer->dlc);

    return CAN0_MessageTransmitFifo(1, tx_buffer);
}
