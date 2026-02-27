set(TARGET_NAME test_target)

add_executable(${TARGET_NAME}
    main.c
)

target_link_libraries(${TARGET_NAME}
    PRIVATE
        test_lib
)
