# SD Card Board
This board is a small data logger board that is designed to mount as a daughterboard for the [CAN Module](../can-module).
A microSD card can be inserted into it and the CAN Module will be able to communicate with the card.
The board features a 5V <=> 3.3V logic level converter to allow communication between the CAN Module and the microSD card.

![Board](assets/board_iso.png)

> [!NOTE]
> The SD card will be operating in SPI mode, so data bandwidth will be somewhat limited.

## Schematic
A screenshot of the schematic is below, a higher-quality pdf is available [here](assets/schematic.pdf).

![Schematic](assets/schematic.png)

## Pins
| CAN Module | SD Card Board |
| ---------- | ------------- |
| A4         | N/C           |
| A5         | N/C           |
| A6         | N/C           |
| A7         | N/C           |
| A8         | CSn           |
| A9         | DI            |
| A10        | CLK           |
| A11        | DO            |
