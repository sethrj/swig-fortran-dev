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

//%rename(create_dbl) SimpleClass(double);

#ifdef SWIGFORTRAN

%fortranappend SimpleClass::SimpleClass %{
   write(0, "(a, z16)") "Constructed at ", self%ptr
%}
%fortranprepend SimpleClass::~SimpleClass %{
   write(0, "(a, z16)") "Destroying at ", self%ptr
%}
#endif

%rename(SimpleClassDerp) SimpleClass;
%include "SimpleClass.hh"

%template(action_dbl) SimpleClass::action<double>;
%template(action_int) SimpleClass::action<int>;

//---------------------------------------------------------------------------//
// end of simple_class/simple.i
//---------------------------------------------------------------------------//
