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

bool hal_uart_available(void)
{
    return SERCOM0_USART_ReceiverIsReady();
}

bool hal_uart_read_byte(uint8_t* byte)
{
    if (byte == NULL)
    {
        return false;
    }

    if (!SERCOM0_USART_ReceiverIsReady())
    {
        return false;
    }

    *byte = (uint8_t)SERCOM0_USART_ReadByte();

    return true;
}

size_t hal_uart_read(uint8_t* buffer, size_t max_size)
{
    if (buffer == NULL || max_size == 0)
    {
        return 0;
    }

    size_t count = 0;

    while (count < max_size && SERCOM0_USART_ReceiverIsReady())
    {
        buffer[count++] = (uint8_t)SERCOM0_USART_ReadByte();
    }

    return count;
}
