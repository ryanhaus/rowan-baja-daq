#pragma once
#include <stdint.h>
#include <stddef.h>

void hal_i2c_init();
void hal_i2c_write(uint16_t address, const uint8_t* data, size_t size);
