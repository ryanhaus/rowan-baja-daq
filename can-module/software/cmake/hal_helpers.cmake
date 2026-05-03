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
            COMMAND xc32-objcopy -O ihex ${TARGET_NAME} ${TARGET_NAME}.hex
            WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
            COMMENT "Generating ${TARGET_NAME}.hex"
        )
    endif()
endfunction()

function(register_hal_libraries DIR)
    # Find all directories starting with 'hal_'
    file(GLOB HAL_DIRS RELATIVE ${DIR} hal_*)
    
    foreach(HAL ${HAL_DIRS})
        if(IS_DIRECTORY ${DIR}/${HAL})
            # Define an INTERFACE library so that its source is compiled
            # specifically for each executable it is linked to.
            add_library(${HAL} INTERFACE)
            
            # Add the target-specific source file
            target_sources(${HAL} INTERFACE ${DIR}/${HAL}/${HAL}_${BOARD_TARGET}.c)
            
            # Export the include directory
            target_include_directories(${HAL} INTERFACE ${DIR}/${HAL})
            
            message(STATUS "Registered HAL Library: ${HAL} (${BOARD_TARGET})")
        endif()
    endforeach()
endfunction()
