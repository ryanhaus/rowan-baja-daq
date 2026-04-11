# Auto-detect vendor folders
file(GLOB LIB_DIRS RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *)

foreach(dir ${LIB_DIRS})
    if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/${dir})
        add_subdirectory(${dir})
    endif()
endforeach()
