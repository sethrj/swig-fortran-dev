#!/bin/bash -ex
###############################################################################
# File  : _generated/gen.sh
# Author: Seth R Johnson
# Date  : Fri Dec 02 10:54:25 2016
###############################################################################

swig=/Users/s3j/_code/_build/swig-debug/swig

for lang in java fortran python
do
  dirname=swig-${lang}
  mkdir "${dirname}" 2>/dev/null || true
  (
    cd ${dirname}
    ${swig} -c++ -${lang} -outdir . -o wrap.cxx ../../code.i
  )
done

###############################################################################
# end of _generated/gen.sh
###############################################################################
