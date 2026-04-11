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

You can either create a new folder here and then create a new project within it using MPLAB IDE, or you can copy an existing folder and rename it and then [modify its contents](#modifying) to your needs.

## Modifying
You can open a project in MPLAB IDE by pressing 'File' > 'Open Project' and then navigating to and selecting the `[name].X` folder of the library you want to modify.

Then, click the blue and white MCC (MPLAB Code Configurator) icon in the top bar to open it.

From here, you can use the 'Project Resources' and 'Device Resources' tabs to add more libraries in. You can also use the 'Plugins' dropdown and select 'Pin Configuration' to change what each pin does.

After making changes, you have to regenerate the header files. You can do this by pressing the blue 'Generate' button in the top left under the 'Project Resources' tab. You will likely have to deal with a merge. You can merge all changes (probably what you want) for each file changed by pressing the blue button in the top middle. More details [here](https://developerhelp.microchip.com/xwiki/bin/view/software-tools/mcc/merge/).

More details on MPLAB's MCC [here](https://onlinedocs.microchip.com/oxy/GUID-1F7007B8-9A46-4D03-AEED-650357BA760D-en-US-6/index.html).
