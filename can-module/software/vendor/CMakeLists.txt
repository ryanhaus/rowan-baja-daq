# Auto-detect vendor folders
file(GLOB LIB_DIRS RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *)

foreach(dir ${LIB_DIRS})
    if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${dir})
        
        if(${dir} STREQUAL "mplab")
            if(BOARD_TARGET STREQUAL "pic32")
                add_subdirectory(${dir})
            endif()
        elseif(${dir} STREQUAL "can2040")
            if(BOARD_TARGET STREQUAL "rp2040")
                add_library(can2040 STATIC
                    ${CMAKE_CURRENT_SOURCE_DIR}/can2040/src/can2040.c
                )
                target_include_directories(can2040 PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/can2040/src)
                target_link_libraries(can2040 PUBLIC pico_stdlib hardware_pio hardware_irq hardware_clocks)
            endif()
        elseif(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${dir}/CMakeLists.txt)
            add_subdirectory(${dir})
        endif()
        
    endif()
endforeach()
