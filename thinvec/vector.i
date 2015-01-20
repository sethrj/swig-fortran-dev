//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   thinvec/vector.i
 * \author Seth R Johnson
 * \date   Mon Jan 19 08:59:42 2015
 * \note   Copyright (c) 2015 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//
%{
#include "vector.hh"
%}

%module vec

// Handle the case of operator overloading
%rename(resize_fill) vector::resize(size_type, const value_type &);
%rename(construct_empty) vector::vector();
%rename(construct_count) vector::vector(size_type);
%rename(construct_fill) vector::vector(size_type, const value_type &);

// Load the vector class definition
%include "vector.hh"

// Instantiate
%template(Vec_Dbl) vector<double>;

//---------------------------------------------------------------------------//
// end of swig-dev/hypothetical_vec/vector.i
//---------------------------------------------------------------------------//
