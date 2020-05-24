cmake_minimum_required(VERSION 3.13)
project(files_cpp)

set(CMAKE_CXX_STANDARD 14)

add_executable(t10test_cpp
        t10test.cc
        editor2.hh editor2.cc)

add_executable(t11test_cpp
        t11test.cc
        editor2.hh editor2.cc)