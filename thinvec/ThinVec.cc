//---------------------------------*-C++-*-----------------------------------//
/*!
 * \file   thinvec/ThinVec.cc
 * \author Seth R Johnson
 * \date   Fri Dec 02 15:55:20 2016
 * \brief  ThinVec class definitions.
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//

#include "ThinVec.hh"

#include <iostream>
using std::cout;
using std::endl;

//---------------------------------------------------------------------------//
// EXPLICIT INSTANTIATION
//---------------------------------------------------------------------------//

void print_vec(const ThinVec<double>& v)
{
    cout << "Thinvec contents at " << &v << ": {";
    const char* sep = "";
    for (const double& val : v.data())
    {
        cout << sep << val;
        sep = ", ";
    }
    cout << "}\n";
}

//---------------------------------------------------------------------------//
// EXPLICIT INSTANTIATION
//---------------------------------------------------------------------------//

template class ThinVec<double>;
template class ThinVec<int>;

//---------------------------------------------------------------------------//
// end of thinvec/ThinVec.cc
//---------------------------------------------------------------------------//
