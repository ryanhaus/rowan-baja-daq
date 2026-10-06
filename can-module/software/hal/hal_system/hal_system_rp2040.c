#include "hal_system.h"
#include <pico/stdlib.h>

void hal_system_init(void)
{
    stdio_init_all();
}

void hal_system_delay_ms(uint32_t ms)
{
    sleep_ms(ms);
}
