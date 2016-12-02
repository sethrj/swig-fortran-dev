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


SWIG notes
==========

- The `%rename` directive changes the `sym:name` property

javadestruct

Basic language features
=======================

- class constructor and destructor
- class methods with primitive arguments and return values
- methods/functions with class arguments
- inheritance
- multiple constructors
- `RCP/shared_ptr` wrapping (SWIG should already handle this)
- function overloading
- template instantiation (SWIG should already handle this)
- templated class method instantiation (needed for plist)
- [type checking in SWIG C wrappers]
- Fortran callback functions?

Trilinos classes to wrap
========================
- `Teuchos::RCP` (`shared_ptr` replacaement)
- `Teuchos::Arrays`
- `ParameterList`
