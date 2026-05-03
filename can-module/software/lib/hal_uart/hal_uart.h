#pragma once
#include <stdint.h>
#include <stddef.h>

void hal_uart_init();
void hal_uart_write(const uint8_t* data, size_t size);
