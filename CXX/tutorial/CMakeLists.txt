# Cmake verstion required
cmake_minimum_required(VERSION 3.0)

# project name
project(tutorial)

# Build configureation
set(CMAKE_VERBOSE_MAKEFILE ON)
set(CMAKE_CXX_STANDARD 11)

# Source file and binery list
set(SOURCE
    main.cpp
    )

 # Setting C/CXX compiler   
set(CMAKE_CXX_COMPILER "clang++-9")
set(CMAKE_C_COMPILER "clang-9")

# Setting headerfiles die and link
find_package(Threads REQUIRED)
include_directories("/usr/local/include")
link_directories("/usr/local/lib")

# Global compiler options 
ADD_COMPILE_OPTIONS ( -g -Wall )

# Output directory
SET ( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BUILD_TYPE} )
SET ( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BUILD_TYPE}/lib )
SET ( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BUILD_TYPE}/lib )

#Build
add_executable(${PROJECT_NAME}.out ${SOURCE})
target_link_libraries(${PROJECT_NAME} cantera Threads::Threads)
