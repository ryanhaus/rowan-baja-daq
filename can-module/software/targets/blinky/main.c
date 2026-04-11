#include <stddef.h>
#include <stdbool.h>
#include <stdlib.h>
#include <definitions.h>


int main()
{
    SYS_Initialize(NULL);
    SYSTICK_TimerStart();

    while (true)
    {
        GPIO_LED_Toggle();
        SYSTICK_DelayMs(250);
    }

    return -1;
}
