cmake_minimum_required(VERSION 3.13)
project(files)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(files
        editor.hh
        myeditor.cc
        myeditor.hh)
