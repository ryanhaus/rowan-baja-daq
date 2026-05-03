#include "hal_system.h"
#include <definitions.h>
#include <stddef.h>

void hal_system_init()
{
    SYS_Initialize(NULL);
    SYSTICK_TimerStart();
}

void hal_system_delay_ms(uint32_t ms)
{
    SYSTICK_DelayMs(ms);
}
