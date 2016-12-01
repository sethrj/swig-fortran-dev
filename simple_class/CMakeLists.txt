##---------------------------------------------------------------------------##
## File  : simple_class/CMakeLists.txt
## Author: Seth R Johnson
## Date  : Thu Dec  1 15:13:04 2016
## Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
##---------------------------------------------------------------------------##

cmake_minimum_required(VERSION 3.0)
project(simple_class CXX Fortran)

# SWIG setup
find_package(SWIG REQUIRED)
list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/../cmake")
include(SwigModules)

# Build C++ library
include_directories(${CMAKE_PROJECT_SOURCE_DIR})
add_library(simplelib SimpleClass.cc)

# Generate SWIG module
MAKE_SWIG(MODULE simple
  DEPLIBS simplelib)

# For debugging, copy the generated files to the source dir (under version
# control)
add_custom_command(TARGET simple POST_BUILD COMMAND
  cp
  ${CMAKE_CURRENT_BINARY_DIR}/simpleFORTRAN_wrap.cxx
  ${CMAKE_CURRENT_BINARY_DIR}/simple.f90
  ${CMAKE_CURRENT_SOURCE_DIR}/_generated)

# Create test executable
add_executable(test.exe test.f90)
# It depends on the compiled fortran module
target_link_libraries(test.exe simple)

##---------------------------------------------------------------------------##
## end of simple_class/CMakeLists.txt
##---------------------------------------------------------------------------##
