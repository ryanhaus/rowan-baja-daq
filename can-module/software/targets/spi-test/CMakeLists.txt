set(TARGET_NAME spi-test)

add_executable(${TARGET_NAME}
    main.c
)

target_link_libraries(${TARGET_NAME}
    PRIVATE
        spi_base
        board_led
)

# convert elf to hex
add_custom_command(TARGET ${TARGET_NAME}
    POST_BUILD
    COMMAND xc32-objcopy -O ihex ${TARGET_NAME} ${TARGET_NAME}.hex
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
)
