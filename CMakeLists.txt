cmake_minimum_required(VERSION 3.22)

project(assembler)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "-g -Wall -Wextra -Wpedantic")

file(GLOB SOURCES *.cc)
file(GLOB HEADERS *.hh)

add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS})
