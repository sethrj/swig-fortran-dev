#!/bin/bash
###############################################################################
# File  : swig-dev/bare_function/gen.sh
# Author: Seth R Johnson
# Date  : Sat Jan 17 00:01:17 2015
###############################################################################

SWIG=/Users/s3j/_local/swig-debug/bin/swig

# go -intgosize 16
# javascript -v8

for lang in allegrocl chicken clisp cffi csharp d fortran guile java \
   lua modula3 mzscheme ocaml octave perl php pike python r ruby \
  sexp tcl uffi xml
do
  DIR=swig-${lang}
  mkdir "${DIR}" 2>/dev/null
  cd $DIR || exit $?
  echo "Calling swig with ${lang}"
  ln -s ../foo.* . 2>/dev/null
  ${SWIG} -c++ -${lang} foo.i || exit $?
  cd ..
done

###############################################################################
# end of swig-dev/bare_function/gen.sh
###############################################################################
