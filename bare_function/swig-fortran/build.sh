#!/bin/bash
###############################################################################
# File  : swig-dev/bare_function/fortran.sh
# Author: Seth R Johnson
# Date  : Sat Jan 17 08:48:36 2015
###############################################################################

swig=/Users/s3j/_code/_build/swig-debug/swig
#args=-debug-tags
args=

dirname=swig-lang
ln -s ../foo.* . 2>/dev/null
g++ foo.cc -c -o foo.o
${swig} ${args} -c++ -fortran foo.i || exit $?
g++ foo_wrap.cxx -c -o foo_wrap.o
gfortran -c foomod_I.f90
gfortran -c foomod_M.f90
gfortran  foo.o foo_wrap.o foomod_I.o foomod_M.o test.f90 -o test.exe

###############################################################################
# end of swig-dev/bare_function/fortran.sh
###############################################################################
