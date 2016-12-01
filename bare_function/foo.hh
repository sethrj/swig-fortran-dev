//---------------------------------*-C++-*-----------------------------------//
/*!
 * \file   swig-dev/bare_function/foo.hh
 * \author Seth R Johnson
 * \date   Fri Jan 16 21:19:07 2015
 * \brief  foo class declaration.
 * \note   Copyright (c) 2015 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//

#ifndef swig_dev_bare_function_foo_hh
#define swig_dev_bare_function_foo_hh

void set_something(int x, double y);
double get_something(int x);
void get_something_ref(int x, double& y);
void get_something_ptr(int x, double* y);

//---------------------------------------------------------------------------//
#endif // swig_dev_bare_function_foo_hh

//---------------------------------------------------------------------------//
// end of swig-dev/bare_function/foo.hh
//---------------------------------------------------------------------------//
