#pragma once
#include <stdint.h>
#include <stddef.h>

void hal_spi_init();
void hal_spi_write(const uint8_t* data, size_t size);
