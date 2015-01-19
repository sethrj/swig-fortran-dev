#!/bin/bash
###############################################################################
# File  : thinvec/gen.sh
# Author: Seth R Johnson
# Date  : Sat Jan 17 00:01:17 2015
###############################################################################

swig=/Users/s3j/_code/_build/swig-debug/swig

for lang in fortran python
do
  dirname=swig-${lang}
  mkdir "${dirname}" 2>/dev/null
  cd ${dirname} || exit $?
  echo "Calling swig with ${lang}"
  ln -s ../vector.* . 2>/dev/null
  for n in 3 4
  do
    flags="-debug-module ${n}"
    ${swig} ${flags} -c++ -${lang} vector > "debug-module-${n}.out" || exit $?
  done
  cd ..
done

###############################################################################
# end thinvec/gen.sh
###############################################################################
