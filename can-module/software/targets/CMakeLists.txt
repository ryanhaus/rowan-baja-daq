# Auto-detect targets 
file(GLOB TARGET_DIRS RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *)

foreach(dir ${TARGET_DIRS})
    if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${dir})
        add_subdirectory(${dir})
    endif()
endforeach()
