#!/bin/bash
###############################################################################
# File  : swig-dev/bare_function/gen.sh
# Author: Seth R Johnson
# Date  : Sat Jan 17 00:01:17 2015
###############################################################################

swig=/Users/s3j/_code/_build/swig-debug/swig

for lang in fortran java python
do
  dirname=swig-${lang}
  mkdir "${dirname}" 2>/dev/null
  cd ${dirname} || exit $?
  echo "Calling swig with ${lang}"
  ln -s ../vec.* . 2>/dev/null
  ${swig} -c++ -${lang} vec.i || exit $?
  cd ..
done

###############################################################################
# end of swig-dev/bare_function/gen.sh
###############################################################################
