#include <stdbool.h>
#include <hal_led.h>
#include <hal_system.h>
#include <hal_spi.h>

int main()
{
    hal_system_init();
    hal_spi_init();

    char str[] = "Hello world!";

    while (true)
    {
        LED_On();
        hal_system_delay_ms(50);
        hal_spi_write((uint8_t*)str, sizeof(str));
        LED_Off();
        hal_system_delay_ms(200);
    }

    return -1;
}
