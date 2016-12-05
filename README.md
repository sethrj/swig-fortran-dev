SWIG Fortran development
========================

This repository holds the test interfaces for SWIG-fortran.

The directories are:
 - `cmake`: CMake macro script files (and personal configuration setup) for SWIG
   Fortran generation. I have to use a patched version of UseSWIG (literally
   like a one-line difference).
 - `other_interfaces`: existing Fortran interface files for comparison purposes
 - `bare_function`: simple function interfaces
 - `simple_class`: simple class interface
 - `array_typemaps`: automatic conversion of Fortran arrays into pointer/size
   pair
 - `thinvec`: basic templated vector class
 - `std_vector`: wrapper for `std::vector`


SWIG notes
==========

- The `%rename` directive changes the `sym:name` property

Basic language features
=======================

- DONE: class constructor and destructor
- DONE: class methods with primitive arguments and return values
- DONE: methods/functions with class arguments
- DONE: template instantiation (SWIG should already handle this)
- inheritance (only base class holds pointer)
- dynamic-cast type checking for inheritance upcasts
- DONE: multiple constructors
- `RCP/shared_ptr` wrapping (SWIG should already handle this)
- "generic" function overloading
- templated class method instantiation (needed for plist)
- string wrapping
- DONE: passing entire arrays of data in a single call
- DONE: Add 'intent' qualifiers to arguments?
- passing classes by value?
- Fortran callback functions
- "director" capability to subclass a c++ class using a Fortran class
- Multiple interacting modules
- Iterators?
- Optional generation of `finally` statement for auto-destruction
- Optional typemap for checking validity of pointers (class must be
  constructed)
- Find out about quirks of C++ static object initialization when executed by a
  Fortran `main` function

Trilinos classes to wrap
========================
- `Teuchos::RCP` (`shared_ptr` replacement)
- `Teuchos::Arrays`
- `ParameterList`

Vision:
- One `.f90/.mod` for each package?
- Or collections of alternative modules for different template instantiations?


Discussion points
=================
- What to name constructor/destructor, especially in context of shared pointers
- How to handle shared pointer wrapping: treat it just like the regular
  pointer, except other objects can hold a reference to it?
- Is f90 the right extension for Fortran2003 code?
- Fortran assertions
- Unit tests
- Try to keep compatible with C++ types (namely `size_t` in array sizes) or
  replace with more fortran-friendly `int` type?
