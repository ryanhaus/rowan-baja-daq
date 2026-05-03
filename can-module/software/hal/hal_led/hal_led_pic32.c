#include "hal_led.h"
#include <definitions.h>

void LED_On()
{
    GPIO_LED_Clear();
}

void LED_Off()
{
    GPIO_LED_Set();
}

void LED_Toggle()
{
    GPIO_LED_Toggle();
}
