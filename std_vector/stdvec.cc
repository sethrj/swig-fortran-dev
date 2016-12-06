//---------------------------------*-C++-*-----------------------------------//
/*!
 * \file   std_vector/stdvec.cc
 * \author Seth R Johnson
 * \date   Mon Dec 05 09:06:12 2016
 * \brief  stdvec class definitions.
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//

#include "stdvec.hh"

#include <iostream>
using std::cout;
using std::endl;

//---------------------------------------------------------------------------//
// FREE FUNCTIONS
//---------------------------------------------------------------------------//

template<class T>
void print_vec(const std::vector<T>& v)
{
    cout << "{";
    const char* sep = "";
    for (typename std::vector<T>::const_iterator iter = v.begin(),
         end_iter = v.end();
         iter != end_iter;
         ++iter)
    {
        cout << sep << *iter;
        sep = ", ";
    }
    cout << "}" << endl;
}

//---------------------------------------------------------------------------//
// EXPLICIT INSTANTIATION
//---------------------------------------------------------------------------//

template void print_vec(const std::vector<double>&);
template void print_vec(const std::vector<int>&);

//---------------------------------------------------------------------------//
// end of std_vector/stdvec.cc
//---------------------------------------------------------------------------//
