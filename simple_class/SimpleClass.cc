//---------------------------------*-C++-*-----------------------------------//
/*!
 * \file   simple_class/SimpleClass.cc
 * \author Seth R Johnson
 * \date   Thu Dec 01 15:07:23 2016
 * \brief  SimpleClass class definitions.
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//

#include "SimpleClass.hh"

#include <iostream>
using std::cout;
using std::endl;

//---------------------------------------------------------------------------//
SimpleClass::SimpleClass()
    : d_storage(-1)
{
    cout << "Constructing at " << this << endl;
}

#if 0
SimpleClass::SimpleClass(double d)
    : d_storage(d)
{
    cout << "Constructing with" << d << endl;
}
#endif

SimpleClass::~SimpleClass()
{
    cout << "Destroying at " << this << endl;
}

void SimpleClass::set(double val)
{
    d_storage = val;
    // throw std::logic_error("why did you set me");
}

void SimpleClass::double_it()
{
    d_storage *= 2;
}

double SimpleClass::get() const
{
    return d_storage;
}

double SimpleClass::get_multiplied(int multiple) const
{
    return d_storage * multiple;
}

//---------------------------------------------------------------------------//
void print_value(const SimpleClass& c)
{
    cout << "Simpleclass at " << &c << " has value " << c.get() << endl;
}

//---------------------------------------------------------------------------//
// end of simple_class/SimpleClass.cc
//---------------------------------------------------------------------------//
