function(add_board_executable NAME)
    set(options "")
    set(oneValueArgs BASE_LIB)
    set(multiValueArgs SOURCES LIBS)
    cmake_parse_arguments(ARG "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

    # Every binary is suffixed with its target (i.e. blinky_pic32)
    set(TARGET_NAME ${NAME}_${BOARD_TARGET})
    
    add_executable(${TARGET_NAME} ${ARG_SOURCES})
    
    # Core HAL libraries that are almost always required
    set(CORE_HAL hal_led hal_system)

    # Link against HAL and common libraries
    target_link_libraries(${TARGET_NAME}
        PRIVATE
            ${CORE_HAL}
            ${ARG_LIBS}
    )

    # PIC32-specific post-processing
    if(BOARD_TARGET STREQUAL "pic32")
        # Link to the hardware-specific vendor base if provided
        if(ARG_BASE_LIB)
            target_link_libraries(${TARGET_NAME} PRIVATE ${ARG_BASE_LIB})
        endif()
        
        # Convert ELF to Intel HEX for flashing
        add_custom_command(TARGET ${TARGET_NAME}
            POST_BUILD
            COMMAND ${XC32_BIN_PATH}/xc32-objcopy -O ihex ${TARGET_NAME} ${TARGET_NAME}.hex
            WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
            COMMENT "Generating ${TARGET_NAME}.hex"
        )
    elseif(BOARD_TARGET STREQUAL "rp2040")
        target_link_libraries(${TARGET_NAME}
            PRIVATE
                pico_stdlib
                hardware_gpio
                hardware_uart
                hardware_i2c
                hardware_spi
        )
        pico_set_binary_type(${TARGET_NAME} copy_to_ram)
        pico_add_extra_outputs(${TARGET_NAME})

        add_custom_command(TARGET ${TARGET_NAME}
            POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy_if_different
                ${CMAKE_CURRENT_BINARY_DIR}/${TARGET_NAME}.uf2
                ${CMAKE_BINARY_DIR}/${TARGET_NAME}.uf2
            COMMENT "Copying ${TARGET_NAME}.uf2 to ${CMAKE_BINARY_DIR}"
        )
    endif()
endfunction()
