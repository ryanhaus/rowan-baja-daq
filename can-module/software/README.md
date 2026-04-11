# Software
The software is written in the C programming language, and uses CMake as the build tool.

> [!NOTE]
> This has only been tested on Linux, unknown if it will work on Windows/Mac.
> If it doesn't work on Windows, you could try using [WSL](https://learn.microsoft.com/en-us/windows/wsl/install).

## Prerequisites
You will need the following:
 - [CMake](https://cmake.org/download/)
 - [XC32 Compiler](https://www.microchip.com/en-us/tools-resources/develop/mplab-xc-compilers/xc32)
 - [Criterion](https://github.com/Snaipe/Criterion)
 - [pkg-config](https://gitlab.freedesktop.org/pkg-config/pkg-config)

### Quickstart on Linux
The following command can be used to install the required packages on Ubuntu 24.04+.
**Note that the XC32 compiler must be downloaded and installed separately from the vendor, see link above.**

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

Tests are not build by default, to build the tests, run the following (make sure you have run `cmake -B bin` first and that Criterion is installed):
```sh
$ cmake --build bin -DBUILD_TESTS
```

To run tests, run the following:

```sh
$ ctest --test-dir bin
```
