#!/bin/bash

# ANSI escape codes for colors and styles
RED='\033[1;31m'
BOLD='\033[1m'
RESET='\033[0m'

# make build directory
if [ -d "build" ]; then
    cd build
else
    mkdir build
    cd build
fi

# run cmake
cmake ..
if [ $? -ne 0 ]; then
    echo -e "${RED}${BOLD}Error: CMake configuration failed${RESET}"
    exit 1
fi

# run make
make
if [ $? -ne 0 ]; then
    echo -e "${RED}${BOLD}Error: Make failed${RESET}"
    exit 1
fi
