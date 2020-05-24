cmake_minimum_required(VERSION 3.14)
project(DbSys)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Werror -pedantic")

include_directories(.)

add_executable(t4
        t4test.cc dbms2.cc vdb.cc)

add_executable(t5
        t5test.cc dbms2.cc vdb.cc)

add_executable(t6
        t6test.cc dbms2.cc vdb.cc)

add_executable(t7
        t7test.cc dbms2.cc lldb.cc)

add_executable(cmd
        dbcmd.cc dbms2.cc vdb.cc)