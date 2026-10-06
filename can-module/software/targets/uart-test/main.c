#include <stdbool.h>
#include <stdint.h>
#include <hal_led.h>
#include <hal_system.h>
#include <hal_uart.h>

int main(void)
{
    hal_system_init();
    hal_uart_init();

    char str[] = "Hello world!\r\n";
    uint8_t rx_buf[32];
    uint32_t timer_ticks = 0;

    while (true)
    {
        // read all bytes
        size_t bytes_read = hal_uart_read(rx_buf, sizeof(rx_buf));

        if (bytes_read > 0)
        {
            LED_Toggle();
            hal_uart_write(rx_buf, bytes_read);
        }

        // send message every 500ms
        if (timer_ticks++ % 50 == 0)
        {
            LED_On();

            hal_uart_write((uint8_t*)str, sizeof(str) - 1);
            hal_system_delay_ms(10);

            LED_Off();
        }

        hal_system_delay_ms(10);
    }

    return -1;
}
