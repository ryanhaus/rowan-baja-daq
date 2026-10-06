#include "hal_led.h"
#include <pico/stdlib.h>

static bool led_initialized = false;

static void ensure_led_init(void)
{
    if (!led_initialized)
    {
        gpio_init(PICO_DEFAULT_LED_PIN);
        gpio_set_dir(PICO_DEFAULT_LED_PIN, GPIO_OUT);
        led_initialized = true;
    }
}

void LED_On(void)
{
    ensure_led_init();
    gpio_put(PICO_DEFAULT_LED_PIN, 1);
}

void LED_Off(void)
{
    ensure_led_init();
    gpio_put(PICO_DEFAULT_LED_PIN, 0);
}

void LED_Toggle(void)
{
    ensure_led_init();
    gpio_put(PICO_DEFAULT_LED_PIN, !gpio_get(PICO_DEFAULT_LED_PIN));
}
