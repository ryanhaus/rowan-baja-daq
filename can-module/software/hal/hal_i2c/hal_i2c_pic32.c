#include "hal_i2c.h"
#include <definitions.h>

void hal_i2c_init()
{
    SERCOM0_I2C_Initialize();
}

bool hal_i2c_write(uint16_t address, const uint8_t* data, size_t size)
{
    if (!SERCOM0_I2C_Write(address, (uint8_t*)data, size))
    {
        return false;
    }

    while (SERCOM0_I2C_IsBusy()) { /* wait for transfer completion */ }

    return (SERCOM0_I2C_ErrorGet() == SERCOM_I2C_ERROR_NONE);
}

bool hal_i2c_read(uint16_t address, uint8_t* data, size_t size)
{
    if (data == NULL || size == 0)
    {
        return false;
    }

    if (!SERCOM0_I2C_Read(address, data, size))
    {
        return false;
    }

    while (SERCOM0_I2C_IsBusy()) { /* wait for transfer completion */ }

    return (SERCOM0_I2C_ErrorGet() == SERCOM_I2C_ERROR_NONE);
}

bool hal_i2c_write_read(uint16_t address, const uint8_t* wr_data, size_t wr_size, uint8_t* rd_data, size_t rd_size)
{
    if (rd_data == NULL || rd_size == 0)
    {
        return false;
    }

    if (!SERCOM0_I2C_WriteRead(address, (uint8_t*)wr_data, wr_size, rd_data, rd_size))
    {
        return false;
    }

    while (SERCOM0_I2C_IsBusy()) { /* wait for transfer completion */ }

    return (SERCOM0_I2C_ErrorGet() == SERCOM_I2C_ERROR_NONE);
}
