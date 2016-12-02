#!/bin/bash -ex
###############################################################################
# File  : _generated/gen.sh
# Author: Seth R Johnson
# Date  : Fri Dec 02 10:54:25 2016
###############################################################################

swig=/Users/s3j/_code/_build/swig-debug/swig

# clisp uffi

for lang in allegrocl chicken cffi csharp d fortran guile java \
   lua modula3 mzscheme ocaml octave perl php pike python r ruby \
  sexp tcl  xml
do
  dirname=swig-${lang}
  mkdir "${dirname}" 2>/dev/null || true
  (
    cd ${dirname}
    ${swig} -c++ -${lang} -outdir . -o wrap.cxx ../../simple.i
  )
done

###############################################################################
# end of _generated/gen.sh
###############################################################################
