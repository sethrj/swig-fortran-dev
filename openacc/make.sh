#!/bin/sh -ex

CUDAROOT="/Developer/NVIDIA/CUDA-9.1"
SWIG="/Users/s3j/_code/_build/swig-debug/swig"
SWIG_LIB_DIR="/Users/s3j/_code/swig/Lib"

export SWIG_LIB_DIR
${SWIG} -c++ -fortran thrustacc.i
