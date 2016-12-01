SWIG Fortran development
========================

This repository holds the test interfaces for SWIG-fortran.

The directories are:
 - `cmake`: CMake macro script files (and personal configuration setup) for SWIG
   Fortran generation. I have to use a patched version of UseSWIG (literally
   like a one-line difference).
 - `bare_function`: simple function interfaces (100% working)
 - `other_interfaces`: existing Fortran interface files for comparison purposes
 - `thinvec`: basic templated vector class
