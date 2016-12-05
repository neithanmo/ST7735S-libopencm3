# ST7735S-libopencm3
 This library allows you to use the ST7735S screen together with the ST32F3 / F4 card, using the library libopencm3. It is based on the Adafruit library for arduino.This library includes some functions, very useful for rendering strings, color pixels (in RGB565 format) and primitives like, circles, triangles, lines, etc.
## Getting Started

The first thing is to update the operating system's package base, then
The prerequisites are installed to compile the libopencm3 library, the stlink programmer and the library  with a demo
Give examples
```

### Installing
```
First install the prerequisites:
add the libopencm3 repository(in this case we use ubuntu)
```

sudo add-apt-repository ppa:team-gcc-arm-embedded/ppa

```
then:
```
sudo apt-get update & upgrade

```
tools for compiling
```
sudo apt-get install make git gcc-arm-embedded binutils-arm-embedded  \
gdb-arm-embedded build-essential cmake pkg-config pkg-config  \
libusb-1.0 libusb-1.0.0-dev
```
get the libopencm3 library and compile it:
```
git clone git://github.com/libopencm3/libopencm3.git
cd libopencm3
```
and :
```
make

```
the we need to instal stlink for flashing with:
```

git clone https://github.com/texane/stlink.git

```
go to path
```

cd stlink

```
compile:
```
mkdir build
cd build
cmake ..
ma
sudo make install
sudo cp etc/udev/rules.d/49-stlinkv* /etc/udev/rules.d/
sudo /etc/init.d/udev restart

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc

