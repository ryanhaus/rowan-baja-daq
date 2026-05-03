#include <stdbool.h>
#include <hal_led.h>
#include <hal_system.h>

int main()
{
    hal_system_init();

    while (true)
    {
        LED_Toggle();
        hal_system_delay_ms(250);
    }

    return -1;
}
