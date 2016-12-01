##---------------------------------------------------------------------------##
## File  : bare_function/CMakeLists.txt
## Author: Seth R Johnson
## Date  : Thu Dec 01 13:18:51 2016
## Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
##---------------------------------------------------------------------------##

cmake_minimum_required(VERSION 3.0)
project(bare_function CXX Fortran)

# SWIG setup
find_package(SWIG REQUIRED)
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/../cmake")
include(SwigModules)

# Build C++ library
include_directories(${CMAKE_PROJECT_SOURCE_DIR})
add_library(barelib bare.cc)

# Generate SWIG module
MAKE_SWIG(MODULE bare
  DEPLIBS barelib)

# For debugging, copy the generated files to the source dir (under version
# control)
add_custom_command(TARGET bare POST_BUILD COMMAND
  cp
  ${CMAKE_CURRENT_BINARY_DIR}/bareFORTRAN_wrap.cxx
  ${CMAKE_CURRENT_BINARY_DIR}/bare.f90
  ${CMAKE_CURRENT_SOURCE_DIR}/_generated)

# Create test executable
add_executable(test.exe test.f90)
# It depends on the compiled fortran module
target_link_libraries(test.exe bare)

##---------------------------------------------------------------------------##
## end of bare_function/CMakeLists.txt
##---------------------------------------------------------------------------##
