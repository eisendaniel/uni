cmake_minimum_required(VERSION 3.14)
project(Project_3 C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -o2 -Wextra -pedantic")

add_executable(server server.c)
add_executable(client client.c)