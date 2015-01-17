#!/bin/bash
###############################################################################
# File  : swig-dev/bare_function/fortran.sh
# Author: Seth R Johnson
# Date  : Sat Jan 17 08:48:36 2015
###############################################################################

swig=/Users/s3j/_code/_build/swig-debug/swig
#args=-debug-tags
args=

lang=fortran

dirname=swig-${lang}
mkdir "${dirname}" 2>/dev/null
cd ${dirname} || exit $?
echo "Calling swig with ${lang}"
ln -s ../foo.* . 2>/dev/null
${swig} ${args} -c++ -${lang} foo.i || exit $?

###############################################################################
# end of swig-dev/bare_function/fortran.sh
###############################################################################
