#include "hal_spi.h"
#include <stdio.h>

void hal_spi_init()
{
    printf("SPI Simulation Initialized\n");
}

void hal_spi_write(const uint8_t* data, size_t size)
{
    printf("SPI Write: ");
    for (size_t i = 0; i < size; i++) {
        printf("0x%02X ", data[i]);
    }
    printf("\n");
}
