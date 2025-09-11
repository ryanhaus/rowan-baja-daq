cmake_minimum_required(VERSION 3.20.0)
find_package(Zephyr)
project(lvgl-threads)
target_sources(app PRIVATE src/main.c src/custom_scale.c)

zephyr_code_relocate(FILES ${ZEPHYR_BASE}/modules/lvgl/lvgl_mem.c LOCATION DTCM)
zephyr_code_relocate(FILES ${ZEPHYR_BASE}/modules/lvgl/lvgl.c LOCATION DTCM)
