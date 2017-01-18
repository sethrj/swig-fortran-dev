//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   parameterlist/Teuchos_Array.i
 * \author Seth R Johnson
 * \date   Thu Dec 08 10:17:43 2016
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//
%{
#include "Teuchos_Array.hpp"
%}

// %ignore Teuchos::InvalidArrayStringRepresentation;
// %include "Teuchos_Array.hpp"

namespace Teuchos {

template<typename T>
class Array
{
  public:
    typedef Teuchos_Ordinal Ordinal;
    typedef Ordinal size_type;
    typedef Ordinal difference_type;
    typedef typename std::vector<T>::value_type value_type;
    typedef typename std::vector<T>::pointer pointer;
    typedef typename std::vector<T>::const_pointer const_pointer;
    typedef typename std::vector<T>::reference reference;
    typedef typename std::vector<T>::const_reference const_reference;
    typedef typename std::vector<T>::allocator_type allocator_type;

  public:
    inline Array();
    inline explicit Array(size_type n, const value_type& value = value_type());
    inline Array(const Array<T>& x);

    // XXX --- copied from std_vector.i --- XXX

    // Modify
    void reserve(size_type count);
    void resize(size_type count);
    void resize(size_type count, const value_type& v);
    void push_back(const value_type& v);

    const_reference front() const;
    const_reference back() const;

    // Extend for Fortran: c indexing!
%extend {
    void set(size_type index, const_reference v)
    {
        // TODO: check range
        (*$self)[index] = v;
    }

    value_type get(size_type index)
    {
        return (*$self)[index];
    }

    %apply (SWIGTYPE* ARRAY, SWIG_FORTRAN_STD_SIZETYPE SIZE)
    { (pointer       arr, size_type arrsize),
      (const_pointer arr, size_type arrsize) };

    void assign_from(const_pointer arr, size_type arrsize)
    {
        $self->assign(arr, arr + arrsize);
    }

    // Copy the C++ data to the given Fortran arr. Sizes must match.
    void copy_to(pointer arr, size_type arrsize)
    {
        if ($self->size() != arrsize)
            throw std::range_error("arr/vector size mismatch");

        std::copy($self->begin(), $self->end(), arr);
    }

} // end extend
};

} // end namespace Teuchos

%template(ArrayDouble) Teuchos::Array<double>;

//---------------------------------------------------------------------------//
// end of parameterlist/Teuchos_Array.i
//---------------------------------------------------------------------------//
