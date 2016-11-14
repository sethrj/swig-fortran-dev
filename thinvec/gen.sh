#!/bin/bash -ex
###############################################################################
# File  : thinvec/gen.sh
# Author: Seth R Johnson
# Date  : Sat Jan 17 00:01:17 2015
###############################################################################

# Note: even though you're running from teh build directory, SWIG requries the
# .swg files to be installed
swig=/Users/s3j/_code/_build/swig-debug/swig

#for lang in python fortran java
for lang in fortran
do
  dirname=swig-${lang}
  mkdir "${dirname}"  2>/dev/null || true
  cd ${dirname}
  echo "Calling swig with ${lang}"
  ln -s ../vector.* . 2>/dev/null || true
  for n in 4
  do
    flags="-debug-module ${n} -debug-typemap -debug-tmsearch -debug-tmused"
    ${swig} ${flags} -c++ -${lang} vector.i > "debug-module-${n}.out" || exit $?
  done
  cd ..
done

###############################################################################
# end thinvec/gen.sh
###############################################################################
