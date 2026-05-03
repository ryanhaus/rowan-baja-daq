set(CMAKE_SYSTEM_NAME Generic)

# Use xc-32 compiler
set(CMAKE_C_COMPILER "xc32-gcc")
set(CMAKE_CXX_COMPILER "xc32-g++")
set(CMAKE_ASM_COMPILER "xc32-as")

set(CMAKE_C_FLAGS "-mprocessor=32CM1216JH01048 -mdfp=/opt/microchip/mplabx/v6.30/packs/Microchip/PIC32CM-JH_DFP/1.5.236/PIC32CM-JH01" CACHE STRING "PIC32 compiler flags")
set(CMAKE_EXE_LINKER_FLAGS "-mprocessor=32CM1216JH01048" CACHE STRING "PIC32 linker flags")

# Standard CMake variables for cross-compilation
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
