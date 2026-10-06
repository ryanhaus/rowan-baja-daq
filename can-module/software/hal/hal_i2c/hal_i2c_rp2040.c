#include "hal_i2c.h"
#include <pico/stdlib.h>
#include <hardware/i2c.h>

#define I2C_PORT i2c0
#define I2C_BAUD (100 * 1000)
#define I2C_SDA_PIN 4
#define I2C_SCL_PIN 5

void hal_i2c_init(void)
{
    i2c_init(I2C_PORT, I2C_BAUD);
    gpio_set_function(I2C_SDA_PIN, GPIO_FUNC_I2C);
    gpio_set_function(I2C_SCL_PIN, GPIO_FUNC_I2C);
    gpio_pull_up(I2C_SDA_PIN);
    gpio_pull_up(I2C_SCL_PIN);
}

bool hal_i2c_write(uint16_t address, const uint8_t* data, size_t size)
{
    int result = i2c_write_blocking(I2C_PORT, (uint8_t)address, data, size, false);

    return (result >= 0);
}

bool hal_i2c_read(uint16_t address, uint8_t* data, size_t size)
{
    if (data == NULL || size == 0)
    {
        return false;
    }

    int result = i2c_read_blocking(I2C_PORT, (uint8_t)address, data, size, false);

    return (result >= 0);
}

bool hal_i2c_write_read(uint16_t address, const uint8_t* wr_data, size_t wr_size, uint8_t* rd_data, size_t rd_size)
{
    if (rd_data == NULL || rd_size == 0)
    {
        return false;
    }

    int wr_result = i2c_write_blocking(I2C_PORT, (uint8_t)address, wr_data, wr_size, true);

    if (wr_result < 0)
    {
        return false;
    }

    int rd_result = i2c_read_blocking(I2C_PORT, (uint8_t)address, rd_data, rd_size, false);

    return (rd_result >= 0);
}
