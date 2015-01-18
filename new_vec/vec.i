//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   swig-dev/new_vec/vec.i
 * \author Seth R Johnson
 * \date   Sat Jan 17 15:04:02 2015
 * \note   Copyright (c) 2015 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//
%module vec

%include <std_vector.i>

%template(Vec_Dbl) std::vector<T>;

//---------------------------------------------------------------------------//
// end of swig-dev/new_vec/vec.i
//---------------------------------------------------------------------------//
