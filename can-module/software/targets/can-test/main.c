#include <stdbool.h>
#include <string.h>
#include <hal_led.h>
#include <hal_system.h>
#include <hal_can.h>

int main()
{
    hal_system_init();
    hal_can_init();

    uint32_t data[] = { 0xDEADBEEF, 0x12345678 };

    while (true)
    {
        LED_On();
        bool can_success = hal_can_send(0x469, (uint8_t*)data, sizeof(data));

        hal_system_delay_ms(50);
        LED_Off();
        hal_system_delay_ms(can_success ? 100 : 500);
    }

    return -1;
}
