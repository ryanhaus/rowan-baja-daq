#include "hal_uart.h"
#include <stdio.h>

void hal_uart_init()
{
    printf("UART Simulation Initialized\n");
}

void hal_uart_write(const uint8_t* data, size_t size)
{
    printf("UART Write: ");
    for (size_t i = 0; i < size; i++) {
        printf("%c", data[i]);
    }
    printf("\n");
}
