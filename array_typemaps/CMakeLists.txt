##---------------------------------------------------------------------------##
## File  : array_typemaps/CMakeLists.txt
## Author: Seth R Johnson
## Date  : Sun Dec 04 20:16:01 2016
## Brief : TriBITS package file for array_typemaps/
## Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
##---------------------------------------------------------------------------##

cmake_minimum_required(VERSION 3.0)
project(array_typemaps CXX Fortran)

# SWIG setup
find_package(SWIG REQUIRED)
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/../cmake")
include(SwigModules)

# Build C++ library
include_directories(${CMAKE_PROJECT_SOURCE_DIR})
add_library(codelib code.cc)

# Generate SWIG module
MAKE_SWIG(MODULE code
  DEPLIBS codelib)

# For debugging, copy the generated files to the source dir (under version
# control)
add_custom_command(TARGET code POST_BUILD COMMAND
  cp
  ${CMAKE_CURRENT_BINARY_DIR}/codeFORTRAN_wrap.cxx
  ${CMAKE_CURRENT_BINARY_DIR}/code.f90
  ${CMAKE_CURRENT_SOURCE_DIR}/_generated)

# Create test executable
add_executable(test.exe test.f90)
# It depends on the compiled fortran module
target_link_libraries(test.exe code)

##---------------------------------------------------------------------------##
## end of array_typemaps/CMakeLists.txt
##---------------------------------------------------------------------------##
