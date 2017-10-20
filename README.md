
SWIG notes
==========

- The `%rename` directive changes the `sym:name` property
- To run unit tests::

    cd Examples/test-suite/fortran
    rm summary.txt
    make -k check-cpp
 
 - process failure list using `swig-failures/process-failures.ipynb`
 - Update `Examples/test-suite/fortran/Makefile.in`
  


Discussion points
=================
- What to name constructor/destructor, especially in context of shared pointers
 - create : allocate C++ memory (new) and call constructor
 - retain : possible "constructor" that takes existing RCP and increments its
   reference
 - release : decrement reference count or call destructor

- How to handle shared pointer wrapping: treat it just like the regular
  pointer, except other objects can hold a reference to it?
- Is f90 the right extension for Fortran2003 code? (yes)
- Unit tests and SWIG autoconf integration
- Try to keep compatible with C++ types (namely `size_t` in array sizes) or
  replace with more fortran-friendly `int` type?
