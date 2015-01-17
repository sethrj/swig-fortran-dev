#!/bin/bash
###############################################################################
# File  : swig-dev/bare_function/gen.sh
# Author: Seth R Johnson
# Date  : Sat Jan 17 00:01:17 2015
###############################################################################

swig=/Users/s3j/_code/_build/swig-debug/swig

# go -intgosize 16
# javascript -v8

for lang in allegrocl chicken clisp cffi csharp d fortran guile java \
   lua modula3 mzscheme ocaml octave perl php pike python r ruby \
  sexp tcl uffi xml
do
  dirname=swig-${lang}
  mkdir "${dirname}" 2>/dev/null
  cd ${dirname} || exit $?
  echo "Calling swig with ${lang}"
  ln -s ../foo.* . 2>/dev/null
  ${swig} -c++ -${lang} foo.i || exit $?
  cd ..
done

###############################################################################
# end of swig-dev/bare_function/gen.sh
###############################################################################
