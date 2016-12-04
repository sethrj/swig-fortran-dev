##---------------------------------------------------------------------------##
## File  : swig-fortran-dev/config.cmake
## Author: Seth R Johnson
## Date  : Thu Dec 01 13:27:05 2016
## Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
# cd ~/_code/_build/devswig-bare-function
# cmake -C /Users/s3j/_code/swig-fortran-dev/cmake/config.cmake \
#   ~/_code/swig-fortran-dev/bare_function
##---------------------------------------------------------------------------##

SET(CMAKE_CXX_COMPILER "/opt/local/bin/g++" CACHE PATH "")
SET(CMAKE_C_COMPILER "/opt/local/bin/gcc" CACHE PATH "")
SET(CMAKE_Fortran_COMPILER "/opt/local/bin/gfortran" CACHE PATH "")

SET(SWIG_EXECUTABLE "/Users/s3j/_code/_build/swig-debug/swig" CACHE PATH "")
SET(SWIG_DIR "/Users/s3j/_local/swig-debug/share/3.0.10" CACHE PATH "")

SET(BUILD_SHARED_LIBS ON CACHE BOOL "")
SET(CMAKE_BUILD_TYPE Debug CACHE STRING "")

##---------------------------------------------------------------------------##
## end of swig-fortran-dev/config.cmake
##---------------------------------------------------------------------------##
