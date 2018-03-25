#!/bin/sh -ex

DST=/lustre/atlas/scratch/s3j/csc254/swig

nvcc -c thrustacc_wrap.cu
ftn -c -acc thrustacc.f90
ftn -acc -lstdc++ -Minfo test_thrustacc.f90 thrustacc.o thrustacc_wrap.o -o test.exe
cp test.exe ${DST}
