# ST7735S-libopencm3
 This library allows you to use the ST7735S screen together with the ST32F3 / F4 card, using the library libopencm3. It is based on the Adafruit library for arduino.This library includes some functions, very useful for rendering strings, color pixels (in RGB565 format) and primitives like, circles, triangles, lines, etc.
## Getting Started

The first thing is to update the operating system's package base, then
The prerequisites are installed to compile the libopencm3 library, the stlink programmer and the library  with a demo
Give examples
```
```

## Installing

add the libopencm3 repository(in this case we use ubuntu)

```
sudo add-apt-repository ppa:team-gcc-arm-embedded/ppa
sudo apt-get update & upgrade
```

tools for compiling

```
sudo apt-get install make git gcc-arm-embedded binutils-arm-embedded  \
gdb-arm-embedded build-essential cmake pkg-config pkg-config  \
libusb-1.0 libusb-1.0.0-dev
```
get the libopencm3 library and compile it

```
git clone git://github.com/libopencm3/libopencm3.git
cd libopencm3
make
```


The program used to load the binary file to the micro-controller of
Discovery cards are the stlink. First you download the repository code,
Then proceed to compile it and install it with cmake and make. Of the same co-
Of the stlink repository, udev rules are copied to the operating system,
Udev is a device driver for the linux kernel, these rules are
Set the read and write permissions for the device
Detected as the hardware programmer, in case this step fails,
Only the root user can run the programmer's programs.


```
git clone https://github.com/texane/stlink.git
cd stlink
mkdir build
cd build
cmake ..
ma
sudo make install
sudo cp etc/udev/rules.d/49-stlinkv* /etc/udev/rules.d/
sudo /etc/init.d/udev restart
```

## Running the tests


clone this ST7735S-libopencm3 library

```
https://github.com/neithanmo/ST7735S-libopencm3.git
cd ST7735S-libopencm3/codigo/src
```


open the MakeFile and change the line number 24, with the correct path into your system directory for the linker

```
LDSCRIPT = "path to your"/ST7735S-Library/codigo/common/stm32f4-discovery.ld
```


where, "path to your" maybe /home/pedro//ST7735S-Library/codigo/common/stm32f4-discovery.ld
or /home/william.. etc.
you need to change the line number 37 of the MakeFile too, in the same way(relative path to the library).
then


```
cd "path to your"/ST7735S-Library/codigo/src
make
./flash.sh
```


there is another program, if you want to use other images, this program is "MakeColorTable", it is a utility for get the pixel array of any image in any format, is based in opencv. for compile this utlity first sure that you have the opencv development files, then compile with:

```
g++ MakeColorTable.cpp -o getTable `pkg-config --cflags --libs opencv`
```


run the utility with the path to a new image how argument, it will created a new file named color_table.h, so you need to change this name to "table.h" or "tabla2.h", is necesary to rename the array name of the new file, by default the array name is "image_tabla[]", see the main.c code.. run the utility with


```
./getTable imagen2.jpeg
```


## Contributing

```
Boris Altamirano
```


## Authors


* **Natanael Mojica** - *whole work* - [neithanmo](https://github.com/neithanmo)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Easy use of ST7735S when using libopencm3
* etc

