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

Basic language features
=======================

- DONE: class constructor and destructor
- DONE: class methods with primitive arguments and return values
- DONE: methods/functions with class arguments
- DONE: template instantiation (SWIG should already handle this)
- inheritance
- DONE: multiple constructors
- `RCP/shared_ptr` wrapping (SWIG should already handle this)
- "generic" function overloading
- templated class method instantiation (needed for plist)
- string wrapping
- DONE: passing entire arrays of data in a single call
- DONE: Add 'intent' qualifiers to arguments?
- type checking in SWIG C wrappers?
- passing classes by value?
- Fortran callback functions?

Trilinos classes to wrap
========================
- `Teuchos::RCP` (`shared_ptr` replacement)
- `Teuchos::Arrays`
- `ParameterList`

Vision:
- One `.f90/.mod` for each package?
- Or collections of alternative modules for different template instantiations?
