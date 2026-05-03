#include <stdbool.h>
#include <hal_led.h>
#include <hal_system.h>
#include <hal_i2c.h>

int main()
{
    hal_system_init();
    hal_i2c_init();

    char str[] = "Hello world!";

    while (true)
    {
        LED_On();
        hal_system_delay_ms(50);
        hal_i2c_write(0x55, (uint8_t*)str, sizeof(str));
        LED_Off();
        hal_system_delay_ms(200);
    }

    return -1;
}
