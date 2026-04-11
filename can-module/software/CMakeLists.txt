cmake_minimum_required(VERSION 3.23)

# Use xc-32 compiler
set(CMAKE_C_COMPILER "xc32-gcc")
set(CMAKE_CXX_COMPILER "xc32-g++")
set(CMAKE_ASM_COMPILER "xc32-as")
set(CMAKE_C_FLAGS "-mprocessor=32CM1216JH01048 -mdfp=/opt/microchip/mplabx/v6.30/packs/Microchip/PIC32CM-JH_DFP/1.5.236/PIC32CM-JH01")

project(can-module)

# Put all executables in the bin directory, not their own separate ones
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

# For file discovery in nvim
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Add vendor files
add_subdirectory(vendor)

# Add shared libraries
add_subdirectory(lib)

# Add targets
add_subdirectory(targets)
