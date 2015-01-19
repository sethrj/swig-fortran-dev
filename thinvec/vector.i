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

%include "vector.hh"
%template(Vec_Dbl) vector<double>;

//---------------------------------------------------------------------------//
// end of swig-dev/hypothetical_vec/vector.i
//---------------------------------------------------------------------------//
