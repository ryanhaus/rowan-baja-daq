#pragma once
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

void hal_spi_init();
bool hal_spi_write(const uint8_t* data, size_t size);
bool hal_spi_read(uint8_t* data, size_t size);
bool hal_spi_transfer(const uint8_t* tx_data, uint8_t* rx_data, size_t size);
