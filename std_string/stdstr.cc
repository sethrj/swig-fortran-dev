//---------------------------------*-C++-*-----------------------------------//
/*!
 * \file   std_string/stdstr.cc
 * \author Seth R Johnson
 * \date   Mon Dec 05 18:32:13 2016
 * \brief  stdstr class definitions.
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//

#include "stdstr.hh"

#include <iostream>
using std::cout;
using std::endl;

void print_str(const std::string& s)
{
    cout << "\"" << s << "\"" << endl;
}

void halve_str(std::string& s)
{
    s.erase(s.begin() + s.size() / 2, s.end());
}

//---------------------------------------------------------------------------//
// end of std_string/stdstr.cc
//---------------------------------------------------------------------------//
