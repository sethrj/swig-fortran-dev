//---------------------------------*-C++-*-----------------------------------//
/*!
 * \file   bare_function/foo.cc
 * \author Seth R Johnson
 * \date   Wed Nov 30 17:45:22 2016
 * \brief  foo class definitions.
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//

#include <cassert>

namespace
{
double data[10];
}

void set_something(int x, double y)
{
    assert(x < 10);
    data[x] = y;
}

double get_something(int x)
{
    assert(x < 10);
    return data[x];
}

void get_something_ref(int x, double& y)
{
    y = get_something(x);
}

void get_something_ptr(int x, double* y)
{
    *y = get_something(x);
}

//---------------------------------------------------------------------------//
// end of bare_function/foo.cc
//---------------------------------------------------------------------------//
