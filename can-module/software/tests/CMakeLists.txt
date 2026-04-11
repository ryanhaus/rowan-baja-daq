cmake_minimum_required(VERSION 3.23)
project(can-module-tests)

# Add targets and libraries (not incl. vendor files)
add_subdirectory(../lib ${CMAKE_CURRENT_BINARY_DIR}/lib)

# Handle tests
enable_testing()

find_package(PkgConfig REQUIRED)
pkg_check_modules(CRITERION REQUIRED IMPORTED_TARGET criterion)

# Recursively find test files
file(GLOB_RECURSE TEST_SOURCES
    CONFIGURE_DEPENDS
    ${CMAKE_CURRENT_SOURCE_DIR}/**/test_*.c
)

foreach(TEST_FILE ${TEST_SOURCES})
    # Get file name w/o path
    get_filename_component(TEST_NAME ${TEST_FILE} NAME_WE)

    # Get module name
    string(REGEX REPLACE "^test_(.*)" "\\1" MODULE_NAME ${TEST_NAME})

    # Create test executable
    add_executable(${TEST_NAME}
        ${TEST_FILE}
    )

    target_link_libraries(${TEST_NAME}
        PRIVATE
            ${MODULE_NAME}
            PkgConfig::CRITERION
    )

    # Register test
    add_test(
        NAME ${TEST_NAME}
        COMMAND ${TEST_NAME}
    )

endforeach()
