#include "hal_spi.h"
#include <stdio.h>
#include <string.h>

void hal_spi_init()
{
    printf("SPI Simulation Initialized\n");
}

bool hal_spi_write(const uint8_t* data, size_t size)
{
    printf("SPI Write (%zu bytes): ", size);

    for (size_t i = 0; i < size; i++)
    {
        printf("0x%02X ", data[i]);
    }

    printf("\n");

    return true;
}

bool hal_spi_read(uint8_t* data, size_t size)
{
    // TODO
    if (data == NULL || size == 0)
    {
        return false;
    }

    memset(data, 0xFF, size);
    printf("SPI Read (%zu bytes): returning dummy 0xFF\n", size);

    return true;
}

bool hal_spi_transfer(const uint8_t* tx_data, uint8_t* rx_data, size_t size)
{
    // TODO
    if (size == 0)
    {
        return false;
    }

    printf("SPI Transfer (%zu bytes)\n", size);

    if (tx_data)
    {
        printf("  MOSI: ");

        for (size_t i = 0; i < size; i++)
        {
            printf("0x%02X ", tx_data[i]);
        }

        printf("\n");
    }

    if (rx_data)
    {
        memset(rx_data, 0xFF, size);
        printf("  MISO: (returning dummy 0xFF)\n");
    }

    return true;
}
