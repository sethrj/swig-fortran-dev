//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   simple_class/simple.i
 * \author Seth R Johnson
 * \date   Thu Dec 01 15:07:35 2016
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//
%{
#include "SimpleClass.hh"
%}

%module simple

//%rename(ctor_dbl) SimpleClass(double);

%fortranappend SimpleClass::SimpleClass %{
    write(0, "(a, z16)") "Constructed at ", fresult%ptr
%}
%fortranprepend SimpleClass::~SimpleClass %{
    write(0, "(a, z16)") "Destroying at ", farg1%ptr
%}


%include "SimpleClass.hh"

//---------------------------------------------------------------------------//
// end of simple_class/simple.i
//---------------------------------------------------------------------------//
