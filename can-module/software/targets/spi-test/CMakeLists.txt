add_board_executable(spi-test 
    SOURCES main.c 
    LIBS hal_spi
    BASE_LIB spi_base
)
