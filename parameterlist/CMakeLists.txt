##---------------------------------------------------------------------------##
## File  : parameterlist/CMakeLists.txt
## Author: Seth R Johnson
## Date  : Tue Dec 06 18:11:09 2016
## Brief : TriBITS package file for parameterlist/
## Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
##---------------------------------------------------------------------------##

cmake_minimum_required(VERSION 3.1)
project(parameterlist CXX Fortran)

set(CMAKE_CXX_STANDARD 11)

# SWIG setup
find_package(SWIG REQUIRED)
list(APPEND CMAKE_MODULE_PATH "/Users/s3j/_code/swig/Examples/fortran/cmake")
include(SwigModules)

# Trilinos library
include("/Users/s3j/_local/trilinos-debug/lib/cmake/Trilinos/TrilinosConfig.cmake")
#SET(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} ${Trilinos_SHARED_LIB_RPATH_COMMAND}")

# Generate SWIG module
include_directories(
  ${CMAKE_PROJECT_SOURCE_DIR}
  ${Trilinos_INCLUDE_DIRS})
MAKE_SWIG(MODULE teuchos
  DEPLIBS teuchoscomm teuchosparameterlist)

# Create test executable
add_executable(test.exe test.f90)
# It depends on the compiled fortran module
target_link_libraries(test.exe teuchos ${Trilinos_TPL_LIBRARIES})

##---------------------------------------------------------------------------##
## end of parameterlist/CMakeLists.txt
##---------------------------------------------------------------------------##
