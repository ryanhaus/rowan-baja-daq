#include <stdbool.h>
#include <hal_led.h>
#include <hal_system.h>
#include <hal_uart.h>

int main()
{
    hal_system_init();
    hal_uart_init();

    char str[] = "Hello world!";

    while (true)
    {
        LED_On();
        hal_system_delay_ms(50);
        hal_uart_write((uint8_t*)str, sizeof(str));
        LED_Off();
        hal_system_delay_ms(200);
    }

    return -1;
}
