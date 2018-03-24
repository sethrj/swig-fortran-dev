#!/bin/sh -ex

SWIG="/Users/s3j/_code/_build/swig-debug/swig"
SWIG_LIB_DIR="/Users/s3j/_code/swig/Lib"

export SWIG_LIB_DIR
${SWIG} -c++ -fortran thrustacc.i
# The thrust calls have embedded kernel launches and device code
mv thrustacc_wrap.cxx thrustacc_wrap.cu
