set(LIB_NAME test_lib)

add_library(${LIB_NAME}
    STATIC
        test_lib.c
)

target_include_directories(${LIB_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}
)
