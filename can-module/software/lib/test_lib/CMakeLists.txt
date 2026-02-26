# Set library name and sources
add_library(test_lib
    STATIC
        test_lib.c
)

target_include_directories(test_lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
