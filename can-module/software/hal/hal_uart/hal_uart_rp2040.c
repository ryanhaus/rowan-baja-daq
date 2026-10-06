#include "hal_uart.h"
#include <pico/stdlib.h>
#include <hardware/uart.h>

#define UART_ID uart0
#define BAUD_RATE 115200
#define UART_TX_PIN 0
#define UART_RX_PIN 1

void hal_uart_init(void)
{
    uart_init(UART_ID, BAUD_RATE);
    gpio_set_function(UART_TX_PIN, GPIO_FUNC_UART);
    gpio_set_function(UART_RX_PIN, GPIO_FUNC_UART);
}

void hal_uart_write(const uint8_t* data, size_t size)
{
    uart_write_blocking(UART_ID, data, size);
}

bool hal_uart_available(void)
{
    return uart_is_readable(UART_ID);
}

bool hal_uart_read_byte(uint8_t* byte)
{
    if (byte == NULL)
    {
        return false;
    }

    if (!uart_is_readable(UART_ID))
    {
        return false;
    }

    *byte = (uint8_t)uart_getc(UART_ID);

    return true;
}

size_t hal_uart_read(uint8_t* buffer, size_t max_size)
{
    if (buffer == NULL || max_size == 0)
    {
        return 0;
    }

    size_t count = 0;

    while (count < max_size && uart_is_readable(UART_ID))
    {
        buffer[count++] = (uint8_t)uart_getc(UART_ID);
    }

    return count;
}
