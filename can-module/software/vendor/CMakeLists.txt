# Auto-detect vendor folders
file(GLOB LIB_DIRS RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *)

foreach(dir ${LIB_DIRS})
    if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${dir})
        
        if(${dir} STREQUAL "mplab")
            if(BOARD_TARGET STREQUAL "pic32")
                add_subdirectory(${dir})
            endif()
        else()
            add_subdirectory(${dir})
        endif()
        
    endif()
endforeach()
