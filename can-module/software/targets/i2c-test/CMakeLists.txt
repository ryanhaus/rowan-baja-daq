add_board_executable(i2c-test 
    SOURCES main.c 
    LIBS hal_i2c
    BASE_LIB i2c_base
)
