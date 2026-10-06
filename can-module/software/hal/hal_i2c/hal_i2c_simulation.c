#include "hal_i2c.h"
#include <stdio.h>
#include <string.h>

void hal_i2c_init()
{
    printf("I2C Simulation Initialized\n");
}

bool hal_i2c_write(uint16_t address, const uint8_t* data, size_t size)
{
    printf("I2C Write to 0x%02X: ", address);

    for (size_t i = 0; i < size; i++)
    {
        printf("0x%02X ", data[i]);
    }

    printf("\n");

    return true;
}

bool hal_i2c_read(uint16_t address, uint8_t* data, size_t size)
{
    // TODO
    if (data == NULL || size == 0)
    {
        return false;
    }

    memset(data, 0xFF, size);
    printf("I2C Read from 0x%02X (%zu bytes): returning dummy 0xFF\n", address, size);

    return true;
}

bool hal_i2c_write_read(uint16_t address, const uint8_t* wr_data, size_t wr_size, uint8_t* rd_data, size_t rd_size)
{
    // TODO
    if (rd_data == NULL || rd_size == 0)
    {
        return false;
    }

    printf("I2C WriteRead to 0x%02X: wrote %zu bytes, reading %zu bytes (returning dummy 0xFF)\n",
           address, wr_size, rd_size);
    memset(rd_data, 0xFF, rd_size);

    return true;
}
