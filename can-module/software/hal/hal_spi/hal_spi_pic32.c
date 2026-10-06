#include "hal_spi.h"
#include <definitions.h>

void hal_spi_init()
{
    SERCOM0_SPI_Initialize();
}

bool hal_spi_write(const uint8_t* data, size_t size)
{
    if (data == NULL || size == 0)
    {
        return false;
    }

    return SERCOM0_SPI_Write((void*)data, size);
}

bool hal_spi_read(uint8_t* data, size_t size)
{
    if (data == NULL || size == 0)
    {
        return false;
    }

    return SERCOM0_SPI_Read((void*)data, size);
}

bool hal_spi_transfer(const uint8_t* tx_data, uint8_t* rx_data, size_t size)
{
    if (size == 0)
    {
        return false;
    }

    return SERCOM0_SPI_WriteRead((void*)tx_data, size, (void*)rx_data, size);
}
