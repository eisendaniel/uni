cmake_minimum_required(VERSION 3.14)
project(Project_1 C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -O2 -std=c99 -pedantic")

add_executable(encode encode.c)
add_executable(decode decode.c)
add_executable(crack crack.c)