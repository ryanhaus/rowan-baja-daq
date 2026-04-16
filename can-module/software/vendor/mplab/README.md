# Microchip MPLAB Vendor Files
This directory contains several folders, each containing a base configuration with header files generated using the [MPLAB X IDE](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide).

## Folder structure
Each folder will contain a `[name].X` subfolder and a `src` subfolder.

The `[name].X` folder represents the project itself and can be opened with the MPLAB IDE software.

The `src` folder contains all the generated header files that can be included with CMake as a library like so:
```cmake
target_link_libraries(${TARGET_NAME}
    PRIVATE
        gpio_base
)
```
The above example is taken from the [blinky target](../../targets/blinky), which links the generated headers from `gpio_base`.

## Creating new folders
It's pretty easy to create new 'libraries' here to be used in targets.

You can use an existing project in this folder (for example, `gpio_base`) like so:
 - (if not already open) Opening the project in MPLAB X IDE by clicking 'File' > 'Open Project', then selecting the desired project.
 - Open the copying window by right-clicking the top-level project node in the Projects window, then click 'Projects' > 'Copy'.
 - Change the 'Project Name' to a fitting name.
 - **Important:** Create a new folder for the project and change the 'Project Location' to that folder. For example, change `[...]/vendor/mplab/gpio_base` to a new folder like `[...]/vendor/mplab/new_project` (where `new_project` is the desired name), then set that folder to the project location. The 'Project Folder' should now be something like `[...]/vendor/mplab/new_project/new_project.X`.
 - Click 'Copy' (this may take a few seconds).
 - Manually copy the `CMakeLists.txt` file within the original project folder over to the new one. Then, change the first line to go from something like `set(LIB_NAME gpio_base)` to `set(LIB_NAME new_project)`, changing `new_project` to the new name.
 - Then, you will have to set some required pin names, and then you can modify the project to fit your needs (see Modifying section).

## Modifying
### Opening the MCC for the project 
You can open a project in MPLAB IDE by pressing 'File' > 'Open Project' and then navigating to and selecting the `[name].X` folder of the library you want to modify. Then, set it as the main project by right-clicking the project node in the Projects window and clicking 'Set as Main Project'.

Then, click the blue and white MCC (MPLAB Code Configurator) icon in the top bar to open it.

### Changing pin configurations
From the MCC window, you can use the 'Project Resources' and 'Device Resources' tabs to add more libraries in. You can also use the 'Plugins' dropdown and select 'Pin Configuration' to change what each pin does.

For the new project to work with some of the libraries, some of the pins will have to have specific names and configurations, see table below for required pins that need to be changed (note: you may have to change the Function first before some of the other columns can be changed):
| Pin Number | Pin ID | Custom Name      | Function | Mode    | Direction | Latch | Pull Up | Pull Down | Drive Strength |
| ---------- | ------ | -----------      | -------- | ------- | --------- | ----- | ------- | --------- | -------------- |
| 21         | PA12   | GPIO_LED         | GPIO     | Digital | Out       | Low   | No      | No        | NORMAL         |
| 31         | PA22   | GPIO_CAN_STANDBY | GPIO     | Digital | Out       | Low   | No      | No        | NORMAL         |
| 32         | PA23   | GPIO_CAN_NSIL    | GPIO     | Digital | Out       | Low   | No      | No        | NORMAL         |
| 33         | PA24   |                  | CAN0_TX  | High-Z  | n/a       | Low   | No      | No        | NORMAL         |
| 34         | PA25   |                  | CAN0_RX  | High-Z  | n/a       | Low   | No      | No        | NORMAL         |

Otherwise, pins PA04 - PA11 (pin numbers 9 - 16) are exposed on the GPIO header on the board and can be set to whatever you want.

After configuring pins, you will need to regenerate the files (see below).

### Enabling SysTick
SysTick allows you to easily delay things in your program with the `SYSTICK_DelayMs` and `SYSTICK_DelayUs` functions and is required for some libraries.

To enable it, do the following:
 - In the 'Project Graph' window, click the 'System' icon.
 - In the 'Configuration Options' window, open the 'System' > 'Cortex-M0+ Configuration' > 'SysTick' menu, then toggle 'Enable SysTick'.

You will need to regenerate the files after doing this.

### Regenerating files
After making changes, you have to regenerate the header files. You can do this by pressing the blue 'Generate' button in the top left under the 'Project Resources' tab. You will likely have to deal with a merge. You can merge all changes (probably what you want) for each file changed by pressing the blue button in the top middle. More details [here](https://developerhelp.microchip.com/xwiki/bin/view/software-tools/mcc/merge/).

More details on MPLAB's MCC [here](https://onlinedocs.microchip.com/oxy/GUID-1F7007B8-9A46-4D03-AEED-650357BA760D-en-US-6/index.html).
