# General template C project with cmake

Skeleton of a C application for when I need to start new projects, just clone
this repository.

## Prerequisites

First you need to clone this repository on your machine.

```
$ git clone https://github.com/rafaellcoellho/template-C-cmake.git
```

To fit the kernel linux coding style, the
[Uncrustify](https://github.com/uncrustify/uncrustify) program is used. To
install in distro based on Debian:

```
$ sudo apt-get install uncrustify
```

The static analysis of the code is done through cppcheck. It is open source and
the repository is here in [github](https://github.com/danmar/cppcheck). If you
use ubuntu 14+ or some distro based on it, you can install using:

```
$ sudo apt-get install cppcheck
```

The tests are done with [CppUTest](https://github.com/cpputest/cpputest). You
need to install in your machine and add in $PATH

```
$ sudo -H vim /etc/environment
```

Linux already comes with the necessary programs to compile the code, gcc and
make. Your just need to install cmake.

```
$ sudo apt-get install cmake
```

## Directories

- src - Where the application goes.
- src_tests - Code in c ++ to be tested with the cpputest framework.

## Usage

The CMake generate all files necessary to build the app. In root folder of
project try:

```
$ mkdir build && cd build
$ cmake ..
```

## Authors

* **Rafael Coelho** - [rafaellcoellho](https://github.com/rafaellcoellho)
