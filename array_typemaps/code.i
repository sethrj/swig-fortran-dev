//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   array_typemaps/code.i
 * \author Seth R Johnson
 * \date   Sun Dec 04 20:16:01 2016
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//
%module "code"

%{
#include "code.hh"
%}

#ifdef SWIGFORTRAN

// Automatically expand a Fortran array into a pointer/size pair with the
// correct type
%apply (std::size_t SIZE) { ( std::size_t count) };
%apply (SWIGTYPE* ARRAY, std::size_t SIZE) {
       (const double* arr, std::size_t count) };

#endif

%include "code.hh"

//---------------------------------------------------------------------------//
// end of array_typemaps/code.i
//---------------------------------------------------------------------------//
