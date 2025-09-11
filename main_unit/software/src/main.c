#include <zephyr/device.h>
#include <zephyr/devicetree.h>
#include <zephyr/drivers/display.h>
#include <zephyr/drivers/gpio.h>
#include <zephyr/kernel.h>
#include <lvgl.h>
#include <math.h>
#include <stdio.h>

#include "sensor.h"
#include "custom_scale.h"

volatile float sensor_value = 0.0f;

int main(void)
{
    const struct device* display_dev = DEVICE_DT_GET(DT_CHOSEN(zephyr_display));

    if (!device_is_ready(display_dev))
        return -ENODEV;

    /* setup LVGL */
    // set background color
    lv_obj_set_style_bg_color(
        lv_screen_active(),
        lv_color_hex(0xFFFFFF),
        LV_PART_MAIN
    );

    // create grid layout
    static int32_t col_dsc[] = { LV_GRID_FR(1), LV_GRID_FR(1), LV_GRID_TEMPLATE_LAST };
    static int32_t row_dsc[] = { LV_GRID_FR(1), LV_GRID_TEMPLATE_LAST };

    lv_obj_set_layout(lv_screen_active(), LV_LAYOUT_GRID);
    lv_obj_set_grid_dsc_array(lv_screen_active(), col_dsc, row_dsc);

    // create 2 custom scales
    lv_obj_t *scale1, *line1, *label1,
             *scale2, *line2, *label2;

    setup_scale_custom(lv_screen_active(), &scale1, &line1, &label1);
    setup_scale_custom(lv_screen_active(), &scale2, &line2, &label2);

    lv_obj_set_grid_cell(
        scale1,
        LV_GRID_ALIGN_CENTER, 0, 1,
        LV_GRID_ALIGN_CENTER, 0, 1
    );

    lv_obj_set_grid_cell(
        scale2,
        LV_GRID_ALIGN_CENTER, 1, 1,
        LV_GRID_ALIGN_CENTER, 0, 1
    );

    /* LVGL main loop */
    display_blanking_off(display_dev);

    while (1)
    {
        // update scale
        update_scale_custom(scale1, line1, label1, sensor_value);
        update_scale_custom(scale2, line2, label2, fmodf((float)k_uptime_get() / 100.0f , 25.0f));

        // timers
        lv_timer_handler();
        k_msleep(5);
    }

    return 0;
}

void update_sensor_val(void)
{
    while (1)
    {
        sensor_value = get_sensor_val();
        //printf("Updated sensor value: %.2f\t(uptime: %.2f s)\n", sensor_value, (float)k_uptime_get() / 1000.0f);
        k_msleep(20);
    }
}

K_THREAD_DEFINE(
    sensor_thread,
    1024,
    update_sensor_val,
    NULL, NULL, NULL,
    7, 0, 0
);
