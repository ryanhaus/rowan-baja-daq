#pragma once
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

void hal_i2c_init();
bool hal_i2c_write(uint16_t address, const uint8_t* data, size_t size);
bool hal_i2c_read(uint16_t address, uint8_t* data, size_t size);
bool hal_i2c_write_read(uint16_t address, const uint8_t* wr_data, size_t wr_size, uint8_t* rd_data, size_t rd_size);
