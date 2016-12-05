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

#include <cassert>
#include <iostream>
using std::cout;
using std::endl;

//---------------------------------------------------------------------------//
// TEMPLATED METHODS
//---------------------------------------------------------------------------//
template<class T>
void ThinVec<T>::assign(const_pointer p, size_type count)
{
    cout << "assigning " << count << " from " << p << " to " << this
        << endl;
    d_data.assign(p, p + count);
}

template<class T>
void ThinVec<T>::obtain(pointer p, size_type count) const
{
    cout << "copying " << count << " from " << this << " to " << p
        << endl;
    assert(count == size());
    std::copy(d_data.begin(), d_data.end(), p);
}

//---------------------------------------------------------------------------//
// FREE FUNCTIONS
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
