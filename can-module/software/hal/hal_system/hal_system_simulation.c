#include "hal_system.h"
#include <stdio.h>
#include <unistd.h>

void hal_system_init()
{
    printf("Simulation Initialized\n");
}

void hal_system_delay_ms(uint32_t ms)
{
    usleep(ms * 1000);
}
