#include <stddef.h>
#include <stdbool.h>
#include <stdlib.h>
#include <definitions.h>


int main()
{
    SYS_Initialize(NULL);
    SYSTICK_TimerStart();
    SERCOM0_USART_Initialize();

    char str[] = "Hello world!";

    while (true)
    {
        GPIO_LED_Clear();

        SYSTICK_DelayMs(50);
        SERCOM0_USART_Write(str, sizeof(str));
        GPIO_LED_Set();

        SYSTICK_DelayMs(200);
    }

    return -1;
}
