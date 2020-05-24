cmake_minimum_required(VERSION 3.13)
project(serverprogram)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Werror -Wextra -pedantic")

add_executable(serverprogram
        server.cc movieTable.cc)