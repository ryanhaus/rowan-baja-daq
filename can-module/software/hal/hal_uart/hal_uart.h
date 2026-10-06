#pragma once
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

void hal_uart_init();
void hal_uart_write(const uint8_t* data, size_t size);
size_t hal_uart_read(uint8_t* buffer, size_t max_size);
bool hal_uart_read_byte(uint8_t* byte);
bool hal_uart_available(void);
