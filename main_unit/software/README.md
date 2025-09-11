# Main Unit Software
The software for the main unit is written in C and uses the Zephyr real-time operating system (RTOS).

The current supported hardware targets are `native_sim/native/64` and `stm32h735g_disco`.

For graphics, the LVGL library is used.

## How to Use
All commands should be run in the `main_unit/software` directory unless otherwise specified.
### Prerequisites
Make sure Zephyr is installed and up to date, see [here](https://docs.zephyrproject.org/latest/develop/getting_started/index.html). It is assumed that Zephyr is located in `~/zephyrproject`.

Other required libraries: `libsdl2-dev` (for sim only).

Then, run the following to set up the environment:
```sh
source ~/zephyrproject/zephyr/zephyr-env.sh
source ~/zephyrproject/.venv/bin/activate
```

### Building
Run `west build -b ${BOARD}`, where `${BOARD}` is one of the supported targets

To switch build targets later, add `-p always` on the first build.

### Flashing (hardware only)
Use the `west flash` command after building to flash the built binary file to the board.

OpenOCD can be used instead of ST's software by running `west flash -r openocd`.

### Running (software sim only)
Use the `west build -t run` command to build and run a simulation.

### Other Useful Commands
- `west build -t ram_report`: Shows a detailed report of what is consuming RAM.
- `west build -t rom_report`: Same as above, but for flash usage.
