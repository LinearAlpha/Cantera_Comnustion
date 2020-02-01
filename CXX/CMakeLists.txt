# CMake required vertion
cmake_minimum_required(VERSION 3.0)

# Project name
project(tutorial)


set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_CXX_STANDARD 11)

set(SOURCE
    main.cpp
    )

#set(cmake_CXX_COMPILER "clang++-9")
find_package(Threads REQUIRED)
include_directories("/usr/local/include")
link_directories("/usr/local/lib")
ADD_COMPILE_OPTIONS ( -g -Wall )
SET ( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BUILD_TYPE} )
SET ( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BUILD_TYPE}/lib )
SET ( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BUILD_TYPE}/lib )
add_executable(${PROJECT_NAME} ${SOURCE})
target_link_libraries(${PROJECT_NAME} cantera Threads::Threads)
