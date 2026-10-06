#include "hal_uart.h"
#include <stdio.h>

void hal_uart_init()
{
    printf("UART Simulation Initialized\n");
}

void hal_uart_write(const uint8_t* data, size_t size)
{
    printf("UART Write: ");

    for (size_t i = 0; i < size; i++)
    {
        printf("%c", data[i]);
    }

    printf("\n");
}

bool hal_uart_available(void)
{
    // TODO
    return false;
}

bool hal_uart_read_byte(uint8_t* byte)
{
    // TODO
    return false;
}

size_t hal_uart_read(uint8_t* buffer, size_t max_size)
{
    // TODO
    return 0;
}
