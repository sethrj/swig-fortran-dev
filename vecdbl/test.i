//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   packages/ScaleSTL/test.i
 * \author Seth R Johnson
 * \date   Fri Jan 16 14:49:44 2015
 * \note   Copyright (c) 2015 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//
%module test

%{
#include "Vec.h"
%}

%warnfilter(401) ScaleSTL::Vec;

%include "Vec.h"
%template(ScaleSTL_Vec_Dbl) ScaleSTL::Vec<double>;

//---------------------------------------------------------------------------//
// end of packages/ScaleSTL/test.i
//---------------------------------------------------------------------------//
