#include "board_led.h"
#include <definitions.h>

// These functions help make the code more readable b/c the cathode of the LED
// is connected to the GPIO, meaning that it is on when the GPIO is low and off
// when the GPIO is high. So, for example, instead of using GPIO_LED_Set() to 
// turn the LED off and GPIO_LED_Clear() to turn the LED on, you could just use
// LED_On() and LED_Off(), respectively.

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
