#include "hal_uart.h"
#include <definitions.h>

void hal_uart_init()
{
    SERCOM0_USART_Initialize();
}

void hal_uart_write(const uint8_t* data, size_t size)
{
    SERCOM0_USART_Write((void*)data, size);
}
