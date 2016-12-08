//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   parameterlist/Teuchos_Array.i
 * \author Seth R Johnson
 * \date   Thu Dec 08 10:17:43 2016
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//
%{
#include "Teuchos_ArrayRCP.hpp"
#include "Teuchos_ArrayView.hpp"
using Teuchos::ArrayView;
%}

#define REFCOUNTPTR_INLINE

%ignore Teuchos::ArrayView::getConst;
%ignore Teuchos::ArrayView::access_private_ptr;
%ignore Teuchos::ArrayView::access_private_arcp;
%ignore Teuchos::ArrayView::operator ArrayView<constT>;
%ignore Teuchos::ArrayView::operator ArrayView<constT>;

// %apply (SWIGTYPE* ARRAY, int SIZE)
//  Teuchos::ArrayView::ArrayView(TYPE* p, size_type size);

%extend Teuchos::ArrayView {

// Direct assignment from array
%apply (SWIGTYPE* ARRAY, int SIZE) {
    (const_pointer p, size_type size),
    (pointer p, size_type size) }
void assign_from(const_pointer p, size_type size)
{
    $classname source(p, size);
    $self->assign(source);
}

// Direct assignment to array
void copy_to(pointer p, size_type size)
{
    Teuchos::ArrayView<T> dst(p, size);
    dst.assign($self);
}

}

%import  "Teuchos_ArrayRCP.hpp"
%include "Teuchos_ArrayViewDecl.hpp"

%template() Teuchos::ArrayRCP<double>;
%template() Teuchos::ArrayView<const double>;
%template(ArrayViewDobule) Teuchos::ArrayView<double>;

//---------------------------------------------------------------------------//
// end of parameterlist/Teuchos_Array.i
//---------------------------------------------------------------------------//
