#include "hal_can.h"
#include <stdio.h>

void hal_can_init()
{
    printf("CAN Simulation Initialized\n");
}

bool hal_can_send(uint32_t id, const uint8_t* data, size_t size)
{
    printf("CAN Send ID: 0x%03X, Data: ", id);
    for (size_t i = 0; i < size; i++) {
        printf("0x%02X ", data[i]);
    }
    printf("\n");
    return true;
}
