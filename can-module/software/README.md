# Software
The software is written in the C programming language, and uses CMake as the build tool.

> [!NOTE]
> This has only been tested on Linux, unknown if it will work on Windows/Mac.
> If it doesn't work on Windows, you could try using [WSL](https://learn.microsoft.com/en-us/windows/wsl/install).

## Prerequisites
You will need the following:
 - [CMake](https://cmake.org/download/)
 - [XC32 Compiler](https://www.microchip.com/en-us/tools-resources/develop/mplab-xc-compilers/xc32) (for firmware only)
 - [MPLAB X IDE](https://www.microchip.com/en-us/tools-resources/develop/mplab-x-ide) (for [creating new vendor libraries](/can-module/software/vendor/mplab/README.md#creating-new-folders) only)
 - [Criterion](https://github.com/Snaipe/Criterion) (for tests only)
 - [pkg-config](https://gitlab.freedesktop.org/pkg-config/pkg-config) (for tests only)

### Quickstart on Linux
The following command can be used to install the required packages on Ubuntu 24.04+.
**Note that the XC32 compiler and MPLAB X IDE must be downloaded and installed separately from the vendor, see links above.**

```sh
$ sudo apt install cmake libcriterion-dev pkg-config
```

## Building
To build, run the following:

```sh
$ cmake -B bin # Generates CMake files, generally only needed once (unless you edit or add new CMake configs)
$ cmake --build bin # Actually builds the targets
```

This will create build files and compile the target programs in the `bin` directory.

## Running Tests
This project uses the Criterion testing library, which can be ran using CTest (included with CMake).

Tests need to be built within the `tests` directory. To build the tests, run the following within the `tests` directory (same commands for regular building, just run within the `tests` directory):
```sh
$ cmake -B bin
$ cmake --build bin
```

To run tests, run the following:

```sh
$ ctest --test-dir bin
```
