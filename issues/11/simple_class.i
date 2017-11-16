//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   simple_class/simple.i
 * \author Seth R Johnson
 * \date   Thu Dec 01 15:07:35 2016
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//
%module simple_class

//---------------------------------------------------------------------------//
// STRUCTS
//---------------------------------------------------------------------------//

#define BINDCTYPE DerpyStruct

FORT_SIMPLE_TYPEMAP(BINDCTYPE, $*1_ltype, "type($fclassname)",
                    "type($fclassname)")

%typemap(ctype, out="$1_ltype") BINDCTYPE
"const $1_ltype"

%typemap(imimport) BINDCTYPE
"$1_ltype"


%apply BINDCTYPE& { const BINDCTYPE* };

%{
#include <iostream>
using std::cout;
using std::endl;
%}

%inline %{

struct DerpyStruct {
    int foo;
    double bar;
};

void print(const DerpyStruct& s)
{
    cout << "{foo: " << s.foo << ", bar: " << s.bar << "}" << endl;
}

void multiply(DerpyStruct& s)
{
    s.bar *= s.foo;
}

DerpyStruct makeone(int i)
{
    DerpyStruct result;
    result.foo = i * 2;
    result.bar = 0;
    return result;
}

%}



#if 0
%{
#include "SimpleClass.hh"
%}

#ifdef SWIGFORTRAN

%{
#include <iostream>
using std::cout;
using std::endl;
%}

%inline %{
void print_pointer(int msg, void* ptr)
{
    cout << "F " << (msg == 0 ? "Constructed" : "Releasing")
        << ' ' << ptr << endl;
}
%}


/*
 * Note: this used to be: \code
    write(0, "(a, z16)") "F Constructed ", self%swigptr
 * \endcode
 *
 * but printing pointers is not standards-compliant.
 */

%fortranappend SimpleClass::SimpleClass %{
    call print_pointer(0, self%swigptr)
%}
%fortranprepend SimpleClass::~SimpleClass %{
    call print_pointer(1, self%swigptr)
%}

#endif

// %ignore make_class;
// %ignore get_class;

%parameter approx_pi;

// %rename(SimpleClassDerp) SimpleClass;
%include "SimpleClass.hh"

// Overloaded instantiation
// %template(action) SimpleClass::action<double>;
// %template(action) SimpleClass::action<int>;
#endif

//---------------------------------------------------------------------------//
// end of simple_class/simple.i
//---------------------------------------------------------------------------//
