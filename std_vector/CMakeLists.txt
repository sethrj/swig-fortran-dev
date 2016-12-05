##---------------------------------------------------------------------------##
## File  : std_vector/CMakeLists.txt
## Author: Seth R Johnson
## Date  : Mon Dec 05 09:05:31 2016
## Brief : TriBITS package file for std_vector/
## Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
##---------------------------------------------------------------------------##

cmake_minimum_required(VERSION 3.0)
project(stdvec CXX Fortran)

# SWIG setup
find_package(SWIG REQUIRED)
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/../cmake")
include(SwigModules)

#SET(CMAKE_CXX_FLAGS "-std=c++11")

# Build C++ library
include_directories(${CMAKE_PROJECT_SOURCE_DIR})
add_library(thinveclib stdvec.cc)

# Generate SWIG module
MAKE_SWIG(MODULE stdvec
  DEPLIBS thinveclib)

# For debugging, copy the generated files to the source dir (under version
# control)
add_custom_command(TARGET stdvec POST_BUILD COMMAND
  cp
  ${CMAKE_CURRENT_BINARY_DIR}/stdvecFORTRAN_wrap.cxx
  ${CMAKE_CURRENT_BINARY_DIR}/stdvec.f90
  ${CMAKE_CURRENT_SOURCE_DIR}/_generated)

# Create test executable
add_executable(test.exe test.f90)
# It depends on the compiled fortran module
target_link_libraries(test.exe stdvec)


##---------------------------------------------------------------------------##
## end of std_vector/CMakeLists.txt
##---------------------------------------------------------------------------##
