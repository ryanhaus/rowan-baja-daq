#include <stddef.h>
#include <stdbool.h>
#include <stdlib.h>
#include <definitions.h>
#include <board_led.h>

int main()
{
    SYS_Initialize(NULL);
    SYSTICK_TimerStart();
    SERCOM0_USART_Initialize();

    char str[] = "Hello world!";

    while (true)
    {
        LED_On();

        SYSTICK_DelayMs(50);
        SERCOM0_USART_Write(str, sizeof(str));
        LED_Off();

        SYSTICK_DelayMs(200);
    }

    return -1;
}
