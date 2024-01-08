cmake_minimum_required(VERSION 3.10)

project(assembler)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Collect all source files in the root directory
file(GLOB SOURCES *.cc)

# Collect all header files in the root directory
file(GLOB HEADERS *.hh)

# Add the executable target
add_executable(${PROJECT_NAME} ${SOURCES} ${HEADERS})
file(COPY tests DESTINATION ${CMAKE_BINARY_DIR})
