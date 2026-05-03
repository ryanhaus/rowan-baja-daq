# automatically discover and register all HAL libraries
file(GLOB HAL_DIRS RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *)

foreach(HAL ${HAL_DIRS})
    if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${HAL})
        
        # Define each HAL as an INTERFACE library.
        # This ensures the source file is compiled uniquely for each target,
        # allowing for target-specific includes and base library linking.
        add_library(${HAL} INTERFACE)
        
        # Add target-specific source (e.g., hal_led_pic32.c)
        target_sources(${HAL} INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/${HAL}/${HAL}_${BOARD_TARGET}.c)
        
        # Export the include directory for this HAL
        target_include_directories(${HAL} INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/${HAL})
        
        message(STATUS "HAL: Registered ${HAL} for ${BOARD_TARGET}")
        
    endif()
endforeach()
