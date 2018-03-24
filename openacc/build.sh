#!/bin/sh -ex

nvcc -c thrustacc_wrap.cu
ftn -c -acc thrustacc.f90
