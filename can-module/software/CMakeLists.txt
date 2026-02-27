cmake_minimum_required(VERSION 3.23)
project(can-module)

# Put all executables in the bin directory, not their own separate ones
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

# Add shared libraries
add_subdirectory(lib)

# Add tests
enable_testing()
add_subdirectory(tests)

# Auto-discover targets
file(GLOB TARGET_DIRS RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}/targets
     ${CMAKE_CURRENT_SOURCE_DIR}/targets/*)

foreach(dir ${TARGET_DIRS})
    if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/targets/${dir})
        add_subdirectory(targets/${dir})
    endif()
endforeach()
