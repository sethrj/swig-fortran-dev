//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   spbug/spbug.i
 * \author Seth R Johnson
 * \date   Sat Oct 07 09:10:52 2017
 * \note   Copyright (c) 2017 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//
%module spbug

typedef int U;

%include <std_shared_ptr.i>

//---------------------------------------------------------------------------//

%shared_ptr(nspace::A<U>)

namespace nspace {
template<class T>
class A {
    A();
};
}

%template(At) nspace::A<U>;

//---------------------------------------------------------------------------//

%shared_ptr(C<T>)

template<class T>
class C {
public:

    typedef nspace::A<T> type;

    //C(const std::shared_ptr<const type>& x);
    //C(std::shared_ptr<const type> x);
    C(const std::shared_ptr<type>& x);
};

%template(Ct) C<U>;

//---------------------------------------------------------------------------//
// end of spbug/spbug.i
//---------------------------------------------------------------------------//
