//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   thinvec/ThinVec.i
 * \author Seth R Johnson
 * \date   Mon Jan 19 08:59:42 2015
 * \note   Copyright (c) 2015 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//
%{
#include "ThinVec.hh"
%}

%module thinvec

#ifdef SWIGFORTRAN
// Handle constructor overloading
%rename(ctor_count)  ThinVec::ThinVec(size_type);
//%ignore   ThinVec::ThinVec(size_type, value_type);
%rename(ctor_fill)   ThinVec::ThinVec(size_type, value_type);

// Rename a function that's the same as a Fortran keyword
// NOTE: this appears to be broken in SWIG 3.0.11; we have to explicitly rename
// the instances, and we'll still get warnings even though we shouldn't
// see https://github.com/swig/swig/issues/845
// %rename(ass) ThinVec::assign;
%rename(ass) ThinVec<double>::assign;
%rename(ass) ThinVec<int>::assign;

#endif

// Handle the case of operator overloading
%rename(resize_fill) ThinVec::resize(size_type, value_type);

// Ignore return of types we don't understand
// NOTE: SWIG bug causes this to still emit a warning
%ignore ThinVec::data() const;

// Load the thinvec class definition
%include "ThinVec.hh"

// Instantiate
%template(ThinVecDbl) ThinVec<double>;
%template(ThinVecInt) ThinVec<int>;

//---------------------------------------------------------------------------//
// end of swig-dev/thinvec/ThinVec.i
//---------------------------------------------------------------------------//
