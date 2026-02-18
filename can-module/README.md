# CAN Module
The CAN Module is the main building block for the overall Data Acquisition system.
It is used as an interface between the shared [CAN Bus](https://en.wikipedia.org/wiki/CAN_bus) and each individual sensor or module around the vehicle.
This document holds all documentation about the components and usage for the CAN Module PCB.

![Screenshot of board](assets/board_iso.png)

## PCB
The CAN Module is a 1" x 0.75" printed circuit board (PCB) designed in [KiCad](https://kicad.org). All KiCad files are available in the '[pcb](pcb)' directory.

The board features a [48MHz PIC32 microcontroller](#microcontroller), a [CAN Transceiver](#can-transceiver), [headers for power and CAN communication](#vehicle-interface), as well as [8 GPIO pins](#sensor-interface).

Below shows an orthographic top and bottom view of the board:

<div align="center">
    <img src="assets/board_top_ortho.png" width="49%" />
    <img src="assets/board_bottom_ortho.png" width="49%" />
</div>

> [!NOTE]
> If more than 8 GPIO pins are required for a particular sensor or module, an I2C GPIO expander can be used, or wires can be soldered to one of the exposed GPIO test points (see [here](#extra-gpios)).
> Alternatively, a larger custom board can be designed, these modules are able to communicate with any CAN-FD compatible device that communicates with a 5V logic level.

### Schematic
A schematic of the CAN Module is shown below.
Higher-quality pdf available [here](assets/schematic.pdf).

![Schematic](assets/schematic.png)

### Dimensions
The dimensions below may be of use for designing custom enclosures or daughterboards to be mounted to the CAN Module.
All dimensions are in mm, and the mounting holes are M2. Additionally, the pin headers have 0.05" (1.27mm) hole spacing.
![Dimensions of board](assets/board_dimensions.png)

### Power Requirements
The boards should be powered with +5V DC through the appropriate pins in the [vehicle interface](#vehicle-interface).

The total power consumption depends on attached sensors and modules, but 100-200 mA at most will be consumed by the board itself during peak power usage.

> [!NOTE]
> The boards feature reverse polarity protection, a resettable fuse, and ESD protection diodes on all pins within the vehicle interface.

> [!WARNING]
> Even if 3.3V GPIO logic is required, the supply voltage should still be 5V to ensure CAN communication works.
> See [here](#gpio-voltage-selection).

### Microcontroller
The microcontroller on the CAN Module is the [PIC32CM1216JH01048-I/U5B](https://www.digikey.com/en/products/detail/microchip-technology/PIC32CM1216JH01048-I-U5B/25904014), an inexpensive and tiny 32-bit ARM microcontroller that operates at 48MHz with 128KB of flash and 16KB of RAM, as well as an embedded hardware CAN controller.
See the datasheet [here](https://ww1.microchip.com/downloads/aemDocuments/documents/MCU32/ProductDocuments/DataSheets/PIC32CM-JH00-JH01-Family-Data-Sheet-DS60001632.pdf).

<img src="https://mm.digikey.com/Volume0/opasdata/d220001/derivates/6/003/246/870/MFG_150%7EC04-21493%7EM%7E48_web%28640x640%29.jpg?hidebanner=true" width="20%" />

### CAN Transceiver
The CAN Transceiver on the CAN Module is the [ATA6560-GBQW-N](https://www.digikey.com/en/products/detail/microchip-technology/ATA6560-GBQW-N/9453100?s=N4IgTCBcDaIIIBU4DYCsyAMBaA4gIQEUB1LAORAF0BfIA).
See the datasheet [here](https://ww1.microchip.com/downloads/en/DeviceDoc/20005991B.pdf).

<img src="https://mm.digikey.com/Volume0/opasdata/d220001/derivates/1/003/238/279/MFG_150%7EC04-21358%7EQ8B%7E8_sml%28200x200%29.jpg" width="20%" />

### Indication LEDs
There are two indication LEDs present on the CAN Module.
One LED is a power indicator LED and is not configurable.
The other is configurable and has the cathode connected through a 30k resistor to the PA12 pin on the microcontroller.
Each LED has 5V at the anode.

### Pins & Connectors
All pins on the CAN Module operate at 5V logic levels by default.
The GPIO pins can be operated at 3.3V as well, see [here](#gpio-voltage-selection).
There are two distinct sets of pins on the board that serve different purposes, the sensor interface and the vehicle interface, as described and labelled below.

<div align="center">
    <img src="assets/board_top_labelled_pin_interface.png" width="50%" />
</div>

> [!WARNING]
> The headers use **0.05" (1.27mm) hole spacing** for space conservation, not the more common 0.1" (2.54mm) spacing.

#### Sensor Interface
The sensor interface is the set of 8 GPIO and 2 output power pins located on the left side of the board.
These pins are intended to provide power to and communicate with some sensor or module, or a custom-designed daughterboard which mounts on top of the CAN Module PCB.

There are two distinct pin headers in the sensor interface, one being 2 pins, and the other being 8 pins.
These are the output power and communication headers, respectively.

The output power header has positive (VDD<sub>IO</sub>) and negative (GND), which is labelled appropriately on the board.

The communication header has 8 GPIO pins which are directly connected to GPIO pins on the [microcontroller](#microcontroller).
The pins included in this header include GPIO pins PA4 through PA11 from the microcontroller in sequential order, as labelled on the board.
These pins were selected because every one of them is capable of acting as a communication interface pin for the SERCOM peripheral on the microcontroller, see the [datasheet](https://ww1.microchip.com/downloads/aemDocuments/documents/MCU32/ProductDocuments/DataSheets/PIC32CM-JH00-JH01-Family-Data-Sheet-DS60001632.pdf) (Table 4-2) for more info.

> [!WARNING]
> These pins do not have ESD diodes, series resistors, or short circuit protection (other than what is provided by the microcontroller's GPIO pins).

> [!NOTE]
> These pins operate at 5V by default.
> They can also be configured to operate at 3.3V, see [here](#gpio-voltage-selection).

#### Vehicle Interface
The vehicle interface is the set of 2 communication and 2 input power pins located on the right side of the board.
These pins are intended to provide power to the CAN Module board and allow for communication between the board and the rest of the vehicle via the shared CAN Bus.

The pins are organized as a single 4-pin header.

#### Extra GPIOs
13 extra GPIO pins are exposed from the microcontroller and can be used.
See the screenshot below to see all labelled test points.

<div align="center">
    <img src="assets/board_top_labelled_test_points.png" width="75%" />
</div>

> [!NOTE]
> All GPIO test points are exposed from Port A, so it is not explicitly labelled in the screenshot.
> For example, the point labelled '13' maps to PA13, '14' to PA14, etc.

> [!NOTE]
> In addition to GPIOs, there is also a test point for +5V.
> This test point is after all power filtering & fusing, so it may be helpful for debugging power issues.

#### GPIO Voltage Selection
A 0-ohm resistor seleciton labelled V<sub>IO</sub> can be used to select the GPIO voltage.
By default, the resistor bridges the 5V supply to VDD<sub>IO</sub>.
However, the resistor can be moved over to bridge the 3.3V supply to VDD<sub>IO</sub>, allowing the CAN module to communicate with sensors and devices that operate at 3.3V logic levels.

<div align="center">
    <img src="assets/board_top_labelled_gpio_voltage_selector.png" width="75%" />
</div>

> ![NOTE]
> Note that this only affects the microcontroller GPIOs.
> CAN communication will still occur at 5V.
> Additionally, changing the IO voltage will change the voltage that SWD communicates at.

#### Programming/Debug Pins
Two serial-wire debug (SWD) pins are exposed and labelled on the back of the board.
A SWD-capable interface will be required to program the boards.

> [!NOTE]
> This is TBD, the boards have not been manufactured yet.

> [!WARNING]
> The SWD pins will operate at the same voltage as the rest of the GPIO.
> See [here](#gpio-voltage-selection).

### Connecting to Other Modules
In order to interface with other devices (i.e., other CAN Modules), they must be wired on the same shared CAN Bus.
An example layout is shown below:

![CAN Layout Example](assets/example_can_layout.svg)

Note that every module shares the same four wires that are routed throughout the vehicle.
This topology helps significantly reduce the amount of wire required, time spent routing wire, and helps decentralize devices to minimize single points of failure.

Also note that CAN Bus Modules generally do not exist on their own, they will probably need some other attached device or sensor to either provide or process data on the bus.

See [here](https://en.wikipedia.org/wiki/CAN_bus) for more info on CAN Bus.

> [!WARNING]
> Make sure that the CAN bus is properly terminated, see [here](https://support.maxongroup.com/hc/en-us/articles/360009241840-CAN-bus-topology-and-bus-termination) for more info.
