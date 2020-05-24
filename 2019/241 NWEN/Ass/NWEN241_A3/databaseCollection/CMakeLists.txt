cmake_minimum_required(VERSION 3.14)
project(databaseCollection)

set(CMAKE_CXX_STANDARD 14)
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Werror -pedantic")

include_directories(.)

add_executable(t34
        t34test.cc
        dbms.cc
        dbms.hh
        )
add_executable(t6
        t6test.cc
        dbms.cc
        dbms.hh)

add_executable(t5
        t5test.cc
        dbms.cc
        dbms.hh
        )
add_executable(t7
        t7test.cc
        dbms.cc
        dbms.hh
)
