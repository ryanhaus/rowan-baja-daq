add_board_executable(uart-test 
    SOURCES main.c 
    LIBS hal_uart
    BASE_LIB uart_base
)
