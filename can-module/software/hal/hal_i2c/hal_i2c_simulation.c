#include "hal_i2c.h"
#include <stdio.h>

void hal_i2c_init()
{
    printf("I2C Simulation Initialized\n");
}

void hal_i2c_write(uint16_t address, const uint8_t* data, size_t size)
{
    printf("I2C Write to 0x%02X: ", address);
    for (size_t i = 0; i < size; i++) {
        printf("0x%02X ", data[i]);
    }
    printf("\n");
}
