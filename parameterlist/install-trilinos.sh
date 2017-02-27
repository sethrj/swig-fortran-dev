#!/bin/bash -ex
###############################################################################
# File  : parameterlist/install-trilinos.sh
# Author: Seth R Johnson
# Date  : Tue Dec 06 18:19:13 2016
###############################################################################

export SWIG_FLAGS="-modern -noproxydel"

cd ${HOME}/_code/_build
mkdir trilinos-swig || true
cd trilinos-swig
cmake -C ${HOME}/_code/swig/Examples/fortran/cmake/config.cmake \
  -D Trilinos_ENABLE_DEBUG:BOOL=ON \
  -D Trilinos_ENABLE_Teuchos:BOOL=ON \
  -D Trilinos_ENABLE_PyTrilinos:BOOL=ON \
  -D Trilinos_ENABLE_ForTrilinos:BOOL=ON \
  -D Trilinos_ENABLE_ALL_OPTIONAL_PACKAGES:BOOL=OFF \
  -D ForTrilinos_ENABLE_TESTS:STRING=ON \
  -D CMAKE_INSTALL_PREFIX:PATH="${HOME}/_local/trilinos-swig" \
 /Users/s3j/_code/Trilinos-swig
make

###############################################################################
# end of parameterlist/install-trilinos.sh
###############################################################################
