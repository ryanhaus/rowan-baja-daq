cmake_minimum_required(VERSION 3.23)
project(can-module)

# Put all executables in the bin directory, not their own separate ones
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

# For file discovery in nvim
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Use xc-32 compiler
set(CMAKE_C_COMPILER "xc32-gcc")
set(CMAKE_CXX_COMPILER "xc32-g++")
set(CMAKE_ASM_COMPILER "xc32-as")
set(CMAKE_C_FLAGS "-mprocessor=32CM1216JH01048 -mdfp=/opt/microchip/mplabx/v6.30/packs/Microchip/PIC32CM-JH_DFP/1.5.236/PIC32CM-JH01")

# Add shared libraries
add_subdirectory(lib)

# Add vendor files
add_subdirectory(vendor)

# Add tests
if (BUILD_TESTS)
    enable_testing()
    add_subdirectory(tests)
endif()

# Auto-discover targets
file(GLOB TARGET_DIRS RELATIVE ${CMAKE_CURRENT_SOURCE_DIR}/targets
     ${CMAKE_CURRENT_SOURCE_DIR}/targets/*
 )

foreach(dir ${TARGET_DIRS})
    if(IS_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/targets/${dir})
        add_subdirectory(targets/${dir})
    endif()
endforeach()
