//---------------------------------*-C++-*-----------------------------------//
/*!
 * \file   array_typemaps/code.cc
 * \author Seth R Johnson
 * \date   Sun Dec 04 20:16:01 2016
 * \brief  code class definitions.
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//

#include "code.hh"

#include <iostream>
using std::cout;
using std::endl;

//---------------------------------------------------------------------------//
void print_array(const double* data, std::size_t count)
{
    cout << "{";
    const char* sep = "";
    for (const double* end_data = data + count; data != end_data; ++data)
    {
        cout << sep << *data;
        sep = ", ";
    }
    cout << "}\n";
}

//---------------------------------------------------------------------------//
// end of array_typemaps/code.cc
//---------------------------------------------------------------------------//
