#include "hal_spi.h"
#include <pico/stdlib.h>
#include <hardware/spi.h>

#define SPI_PORT spi0
#define SPI_BAUD (1000 * 1000)
#define SPI_RX_PIN 16
#define SPI_SCK_PIN 18
#define SPI_TX_PIN 19

void hal_spi_init(void)
{
    spi_init(SPI_PORT, SPI_BAUD);
    gpio_set_function(SPI_RX_PIN, GPIO_FUNC_SPI);
    gpio_set_function(SPI_SCK_PIN, GPIO_FUNC_SPI);
    gpio_set_function(SPI_TX_PIN, GPIO_FUNC_SPI);
}

bool hal_spi_write(const uint8_t* data, size_t size)
{
    if (data == NULL || size == 0)
    {
        return false;
    }

    int result = spi_write_blocking(SPI_PORT, data, size);

    return (result >= 0);
}

bool hal_spi_read(uint8_t* data, size_t size)
{
    if (data == NULL || size == 0)
    {
        return false;
    }

    int result = spi_read_blocking(SPI_PORT, 0x00, data, size);

    return (result >= 0);
}

bool hal_spi_transfer(const uint8_t* tx_data, uint8_t* rx_data, size_t size)
{
    if (size == 0)
    {
        return false;
    }

    int result = spi_write_read_blocking(SPI_PORT, tx_data, rx_data, size);

    return (result >= 0);
}
