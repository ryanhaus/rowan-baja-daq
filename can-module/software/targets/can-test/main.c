#include <stdbool.h>
#include <stdint.h>
#include <hal_led.h>
#include <hal_system.h>
#include <hal_can.h>

int main(void)
{
    hal_system_init();
    hal_can_init();

    uint32_t data[] = { 0xDEADBEEF, 0x12345678 };
    hal_can_frame_t rx_frame;
    uint32_t timer_ticks = 0;

    while (true)
    {
        // read frames
        while (hal_can_receive(&rx_frame))
        {
            LED_Toggle();
            hal_can_send(rx_frame.id + 1, rx_frame.data, rx_frame.size);
        }

        // send frame every 500ms
        if (timer_ticks++ % 50 == 0)
        {
            LED_On();
            hal_can_send(0x469, (uint8_t*)data, sizeof(data));
            hal_system_delay_ms(10);
            LED_Off();
        }

        hal_system_delay_ms(10);
    }

    return -1;
}
