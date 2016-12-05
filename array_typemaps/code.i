//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   array_typemaps/code.i
 * \author Seth R Johnson
 * \date   Sun Dec 04 20:16:01 2016
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//
%{
#include "code.hh"
%}

// Cast integer to size_t whenever it shows up as a 'count' argument
%apply int { (std::size_t count) };

%module "code"

%include "code.hh"

//---------------------------------------------------------------------------//
// end of array_typemaps/code.i
//---------------------------------------------------------------------------//
