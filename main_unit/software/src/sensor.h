#include <zephyr/kernel.h>
#include <math.h>

float get_sensor_val(void)
{
    float uptime_s = (float)k_uptime_get() / 1000.0f;
    return 25.0f * (0.5f + 0.5f * sinf(uptime_s));
}
