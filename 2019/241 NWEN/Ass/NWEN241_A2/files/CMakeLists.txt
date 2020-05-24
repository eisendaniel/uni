cmake_minimum_required(VERSION 3.13)
project(files C)

set(CMAKE_C_STANDARD 11)

add_executable(t7test
        t7test.c
        editor2.h editor2.c)

add_executable(t8test
        t8test.c
        editor2.h editor2.c)
