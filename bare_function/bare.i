//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   swig-dev/bare_function/bare.i
 * \author Seth R Johnson
 * \date   Fri Jan 16 23:51:44 2015
 * \note   Copyright (c) 2015 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//
%{
#include "bare.hh"
%}

%module bare

// Ignore function incompatible with Fortran language (return-by-nonconst-ref)
%ignore get_something_rref;

%include "bare.hh"

//---------------------------------------------------------------------------//
// end of swig-dev/bare_function/bare.i
//---------------------------------------------------------------------------//
