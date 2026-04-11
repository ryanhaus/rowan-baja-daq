set(TARGET_NAME blinky)

add_executable(${TARGET_NAME}
    main.c
)

target_link_libraries(${TARGET_NAME}
    PRIVATE
        gpio_base
)
