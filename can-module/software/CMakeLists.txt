cmake_minimum_required(VERSION 3.23)

# if BOARD_TARGET is not set, build all targets (superbuild)
if(NOT BOARD_TARGET)
    project(can-module-superbuild NONE)
    include(ExternalProject)

    set(SUPPORTED_VARIANTS pic32 simulation)
    
    foreach(VARIANT ${SUPPORTED_VARIANTS})
        set(TOOLCHAIN_ARG "")
        if(${VARIANT} STREQUAL "pic32")
            set(TOOLCHAIN_ARG "-DCMAKE_TOOLCHAIN_FILE=${CMAKE_CURRENT_SOURCE_DIR}/cmake/pic32.cmake")
        endif()

        ExternalProject_Add(${VARIANT}_build
            SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}
            BINARY_DIR ${CMAKE_BINARY_DIR}/${VARIANT}
            CMAKE_ARGS 
                -DBOARD_TARGET=${VARIANT}
                ${TOOLCHAIN_ARG}
            INSTALL_COMMAND ""
            BUILD_ALWAYS ON
        )
    endforeach()

    message(STATUS "Configuring [${SUPPORTED_VARIANTS}]")

# if BOARD_TARGET is set, build just that target
else()
    project(can-module C)

    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
    set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
    
    include(cmake/hal_helpers.cmake)

    add_subdirectory(vendor)
    add_subdirectory(lib)
    add_subdirectory(targets)
endif()
