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
// Cast integer to size_t whenever it shows up as a 'count' argument
%apply int { (std::size_t count) };

#if 0
%typemap(fin, pre="!PRECODE$1", post="!POSTCODE$2") (const double* arr, std::size_t count)
%{
    !$1; $1_type; $1_name; // derp1
    !$1; $2_type; $2_name; // derp2
    finput; //javainput
%}
#endif

#if 1
%typemap(fin, noblock=1) (const double* arr, std::size_t count)
{ $1, size($1) }
#else
%typemap(fin, noblock=1) (const double* arr)
{ $1 = $input->$1_name; // REMAPPED
}
%typemap(fin, noblock=1) (std::size_t count)
{ $1 = $input->$1_name; // REMAPPED2
}
#endif
#endif

#ifdef SWIGJAVA
#if 0
%typemap(javain, pre="PRECODE$1", post="POSTCODE$2") (const double* arr, std::size_t count)
%{
    $1; $1_type; $1_name; // derp1
    $1; $2_type; $2_name; // derp2
    $javainput; //javainput
%}
#endif

#if 1
%typemap(in, noblock=1) (const double* arr, std::size_t count)
{ $1 = $input->$1_name; $2 = $input->$2_name; // REMAPPED
}
#else
%typemap(in, noblock=1) (const double* arr)
{ $1 = $input->$1_name; // REMAPPED
}
%typemap(in, noblock=1) (std::size_t count)
{ $1 = $input->$1_name; // REMAPPED2
}
#endif
#endif

%include "code.hh"

//---------------------------------------------------------------------------//
// end of array_typemaps/code.i
//---------------------------------------------------------------------------//
