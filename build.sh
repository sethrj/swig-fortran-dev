#!/bin/bash -ex
###############################################################################
# File  : swig-fortran-dev/build.sh
# Author: Seth R Johnson
# Date  : Tue Dec 06 06:58:40 2016
###############################################################################

BUILD=$HOME/_code/_build
SOURCE=$HOME/_code/swig/Examples/fortran
GEN=$HOME/_code/swig-fortran-dev/generated

builddir="$BUILD/devswig-examples"
mkdir $builddir 2>/dev/null || true
cd $builddir
if [ -f CMakeCache.txt ]
then
  make clean
else
  cmake -C $SOURCE/cmake/config.cmake $SOURCE
fi
make && \ctest -V
cp */*.{f90,cxx} $GEN
rm $GEN/feature_tests.cxx 2>/dev/null || true

###############################################################################
# end of swig-fortran-dev/build.sh
###############################################################################
