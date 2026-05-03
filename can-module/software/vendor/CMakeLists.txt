# Hardware Support Discovery
# Only includes vendor libraries for relevant targets to avoid symbol conflicts.

file(GLOB VENDOR_DIRS RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *)

foreach(dir ${VENDOR_DIRS})
    if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${dir})
        
        # MPLAB Harmony projects are currently hardware-specific
        if(${dir} STREQUAL "mplab")
            if(BOARD_TARGET STREQUAL "pic32")
                add_subdirectory(${dir})
            endif()
        else()
            add_subdirectory(${dir})
        endif()
        
    endif()
endforeach()
