set(LIB_NAME i2c_base)

# This is usually bad practice but since it's all generated files I'm not sure what another solution would be.
file(GLOB_RECURSE SRCS "*.c")
add_library(${LIB_NAME} STATIC ${SRCS})

target_include_directories(${LIB_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/src/config/default
        ${CMAKE_CURRENT_SOURCE_DIR}/src/packs/PIC32CM1216JH01048_DFP
        ${CMAKE_CURRENT_SOURCE_DIR}/src/packs/CMSIS/CMSIS/Core/Include/
)
