#include "hal_i2c.h"
#include <definitions.h>

void hal_i2c_init()
{
    SERCOM0_I2C_Initialize();
}

void hal_i2c_write(uint16_t address, const uint8_t* data, size_t size)
{
    SERCOM0_I2C_Write(address, (uint8_t*)data, size);
}
