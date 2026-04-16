set(LIB_NAME board_led)

add_library(${LIB_NAME}
    STATIC
        board_led.c
)

target_link_libraries(${LIB_NAME}
    PRIVATE
        gpio_base
)

target_include_directories(${LIB_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}
)
