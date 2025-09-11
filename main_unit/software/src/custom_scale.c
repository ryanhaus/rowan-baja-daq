#include "custom_scale.h"

#include <stdio.h>
#include <math.h>

#define M_PI 3.14159265358979323846f
#define M_2PI (2.0f * M_PI)

void setup_scale_custom(lv_obj_t* parent, lv_obj_t** scale_ptr, lv_obj_t** line_ptr, lv_obj_t** label_ptr)
{
    // create scale
    lv_obj_t* scale = lv_scale_create(parent);

    lv_obj_set_size(scale, 150, 150);
    lv_scale_set_mode(scale, LV_SCALE_MODE_ROUND_INNER);

    lv_obj_set_style_text_font(
        scale,
        &lv_font_montserrat_14,
        LV_PART_MAIN
    ); 

    lv_obj_set_style_bg_opa(scale, LV_OPA_COVER, 0);
    lv_obj_set_style_bg_color(scale, lv_color_hex(0xDDDDDD), 0);
    lv_obj_set_style_radius(scale, LV_RADIUS_CIRCLE, 0);
    lv_obj_set_style_clip_corner(scale, true, 0);
    lv_obj_align(scale, LV_ALIGN_LEFT_MID, LV_PCT(2), 0);

    lv_scale_set_label_show(scale, true);

    lv_scale_set_total_tick_count(scale, 26);
    lv_scale_set_major_tick_every(scale, 5);

    lv_obj_set_style_length(scale, 5, LV_PART_ITEMS);
    lv_obj_set_style_length(scale, 10, LV_PART_INDICATOR);
    lv_scale_set_range(scale, 0, 25);

    lv_scale_set_angle_range(scale, 270);
    lv_scale_set_rotation(scale, 135);
    lv_obj_center(scale);

    // create scale line
    lv_obj_t* line = lv_line_create(scale);
    lv_obj_set_style_line_color(line, lv_color_hex(0xFF0000), LV_PART_MAIN);
    lv_obj_set_style_line_width(line, 6, LV_PART_MAIN);
    lv_obj_set_style_line_rounded(line, true, LV_PART_MAIN);

    // create label
    lv_obj_t* label = lv_label_create(scale);
    lv_label_set_text(label, ""); 

    lv_obj_set_style_text_font(
        label,
        &lv_font_montserrat_18,
        LV_PART_MAIN
    ); 
    
    lv_obj_set_style_text_color(
        lv_screen_active(),
        lv_color_hex(0x000000),
        LV_PART_MAIN
    );

    lv_obj_align(label, LV_ALIGN_BOTTOM_MID, 0, 0);

    // update pointers with addresses
    *scale_ptr = scale;
    *line_ptr = line;
    *label_ptr = label;
}

void update_scale_custom(lv_obj_t* scale, lv_obj_t* line, lv_obj_t* label, float val)
{
    // calculate scale and line parameters
    int LINE_LEN = 60;
    int LINE_OFFSET_X = lv_obj_get_width(scale) / 2;
    int LINE_OFFSET_Y = lv_obj_get_height(scale) / 2;

    int min = lv_scale_get_range_min_value(scale),
        max = lv_scale_get_range_max_value(scale),
        range = max - min,
        angle_range = lv_scale_get_angle_range(scale),
        rot = lv_scale_get_rotation(scale);

    // update label text
    char label_str[32];
    snprintf(label_str, sizeof(label_str), "%i", (int)roundf(val));

    lv_label_set_text(label, label_str);

    // get line_pts reference, or allocate it if necessary
    lv_point_precise_t* line_pts = lv_line_get_points_mutable(line);

    if (line_pts == NULL)
    {
        line_pts = lv_malloc(sizeof(lv_point_precise_t) * 2);
    }

    // update line_pts
    line_pts[0].x = LINE_OFFSET_X;
    line_pts[0].y = LINE_OFFSET_Y;

    float angle_mult =   M_2PI * (float)angle_range / 360.0f,
          angle_offset = M_2PI * (float)rot / 360.0f;
    line_pts[1].x = LINE_OFFSET_X + LINE_LEN * cosf(angle_mult * val / range + angle_offset);
    line_pts[1].y = LINE_OFFSET_Y + LINE_LEN * sinf(angle_mult * val / range + angle_offset);

    lv_line_set_points_mutable(line, line_pts, 2);
    lv_obj_move_foreground(line);
}
