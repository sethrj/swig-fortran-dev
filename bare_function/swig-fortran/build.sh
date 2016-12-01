#!/bin/bash -ex
###############################################################################
# File  : swig-dev/bare_function/fortran.sh
# Author: Seth R Johnson
# Date  : Sat Jan 17 08:48:36 2015
###############################################################################

swig=/Users/s3j/_code/_build/swig-debug/swig
#args=-debug-tags
args=

dirname=swig-lang
#ln -s ../foo.* . 2>/dev/null || true
g++ foo.cc -c -o foo.o
#${swig} ${args} -c++ -fortran foo.i
g++ foo_wrap.cxx -c -o foo_wrap.o
gfortran -Wall -Wextra -c foomod.f90
gfortran -Wall -Wextra  foo.o foo_wrap.o foomod.o test.f90 -o test.exe

###############################################################################
# end of swig-dev/bare_function/fortran.sh
###############################################################################
