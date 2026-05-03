#include "hal_led.h"
#include <stdbool.h>

static bool led_state = false;

void LED_On()
{
    led_state = true;
}

void LED_Off()
{
    led_state = false;
}

void LED_Toggle()
{
    led_state = !led_state;
}

bool LED_GetState()
{
    return led_state;
}
