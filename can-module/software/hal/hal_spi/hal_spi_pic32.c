#include "hal_spi.h"
#include <definitions.h>

void hal_spi_init()
{
    SERCOM0_SPI_Initialize();
}

void hal_spi_write(const uint8_t* data, size_t size)
{
    SERCOM0_SPI_Write((void*)data, size);
}
