#!/bin/bash -ex
###############################################################################
# File  : parameterlist/install-trilinos.sh
# Author: Seth R Johnson
# Date  : Tue Dec 06 18:19:13 2016
###############################################################################

cd ${HOME}/_code/_build
mkdir trilinos-debug
cd trilinos-debug
cmake -C ${HOME}/_code/swig/Examples/fortran/cmake/config.cmake \
  -D Trilinos_ENABLE_DEBUG:BOOL=ON \
  -D Trilinos_ENABLE_Teuchos:BOOL=ON \
  -D CMAKE_INSTALL_PREFIX:PATH="${HOME}/_local/trilinos-debug" \
  /usr/local/src/Trilinos
make && make install/fast

###############################################################################
# end of parameterlist/install-trilinos.sh
###############################################################################
