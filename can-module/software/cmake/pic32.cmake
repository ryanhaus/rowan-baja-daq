set(CMAKE_SYSTEM_NAME Generic)

# Use xc-32 compiler
set(CMAKE_C_COMPILER "xc32-gcc")
set(CMAKE_CXX_COMPILER "xc32-g++")
set(CMAKE_ASM_COMPILER "xc32-as")

# Automatically find the latest Microchip Device Family Pack (MDFP)
if(NOT MICROCHIP_MDFP_PATH)
    # Search for MPLAB X installations
    file(GLOB MPLABX_VERSIONS "/opt/microchip/mplabx/v*")
    list(SORT MPLABX_VERSIONS COMPARE NATURAL ORDER DESCENDING)
    list(GET MPLABX_VERSIONS 0 LATEST_MPLABX)

    if(LATEST_MPLABX)
        # Search for PIC32CM-JH DFP versions
        set(PACK_BASE "${LATEST_MPLABX}/packs/Microchip/PIC32CM-JH_DFP")
        file(GLOB PACK_VERSIONS "${PACK_BASE}/*")
        list(SORT PACK_VERSIONS COMPARE NATURAL ORDER DESCENDING)
        list(GET PACK_VERSIONS 0 LATEST_PACK)
        
        if(LATEST_PACK)
            set(MICROCHIP_MDFP_PATH "${LATEST_PACK}/PIC32CM-JH01" CACHE PATH "Path to Microchip DFP")
        endif()
    endif()
endif()

if(NOT MICROCHIP_MDFP_PATH)
    message(FATAL_ERROR "Could not automatically find Microchip DFP. Please specify -DMICROCHIP_MDFP_PATH=/path/to/PIC32CM-JH01")
endif()

message(STATUS "Using MDFP: ${MICROCHIP_MDFP_PATH}")

set(CPU_FLAGS "-mprocessor=32CM1216JH01048")
set(CMAKE_C_FLAGS "${CPU_FLAGS} -mdfp=${MICROCHIP_MDFP_PATH}" CACHE STRING "PIC32 compiler flags")
set(CMAKE_EXE_LINKER_FLAGS "${CPU_FLAGS}" CACHE STRING "PIC32 linker flags")

# Standard CMake variables for cross-compilation
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
