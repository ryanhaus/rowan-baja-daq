add_board_executable(can-test 
    SOURCES main.c 
    LIBS hal_can
    BASE_LIB gpio_base
)
