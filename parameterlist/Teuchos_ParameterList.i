//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   parameterlist/Teuchos_ParameterList.i
 * \author Seth R Johnson
 * \date   Tue Dec 06 17:59:15 2016
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//
%{
#include "Teuchos_ParameterList.hpp"
%}

%include <std_string.i>

%fragment("StdStringCopyout");

// %include "Teuchos_RCP.i"
// %teuchos_rcp(Teuchos::ParameterList)

namespace Teuchos
{

class ParameterList
{
  public:

    void print() const;

#if 0
    // Allow fortran strings to implicitly create strings for parameter name
    // %typemap(fin, noblock=1) (const std::string& name)
    // { $1_name, len($1_name) }
    %apply const char* { (const std::string& name) };

    ParameterList();
    ParameterList(const std::string& name);

    // >>> DIAGNOSTICS

    // Whether the given parameter is a type
    template<typename T>
    bool isType(const std::string& name) const;

    // >>> TYPELESS QUERIES

#endif
    %extend {

// Constructor
ParameterList(const char* STRING, int SIZE)
{
    return new Teuchos::ParameterList(std::string(STRING, SIZE));
}

// >>> TYPED QUERIES

// Use fortran string typemap for value as well as key
%apply (char* STRING, int SIZE)
{ (char* VALSTRING, int VALSIZE) };
%apply (const char* STRING, int SIZE)
{ (const char* VALSTRING, int VALSIZE) };

template<typename T>
void set_scalar(const char* STRING, int SIZE, const T& value)
{
    $self->set(std::string(STRING, SIZE), value);
}

template<typename T>
void get_scalar(const char* STRING, int SIZE, T& value)
{
    value = $self->get<T>(std::string(STRING, SIZE));
}

// Instantiate get/set
%template(get) get_scalar<double>;
%template(set) set_scalar<double>;
%template(get) get_scalar<int>;
%template(set) set_scalar<int>;
%template(get) get_scalar<Teuchos::ParameterList>;
%template(set) set_scalar<Teuchos::ParameterList>;

// TODO: allow set/get for C++ string type?

// String get/set
void set(const char* STRING, int SIZE,
         const char* VALSTRING, int VALSIZE)
{
    $self->set(std::string(STRING, SIZE),
               std::string(VALSTRING, VALSIZE));
}

void get(const char* STRING, int SIZE,
         char* VALSTRING,    int VALSIZE)
{
    const std::string& value
        = $self->get<std::string>(std::string(STRING, SIZE));
    std_string_copyout(value, VALSTRING, VALSIZE);
}

// Use fortran array typemap for value as well as key
%apply (SWIGTYPE* ARRAY, int SIZE)
{ (const int* ARRAY, int ARRAYSIZE),
  (const double* ARRAY, int ARRAYSIZE) };

//! Array get/set
template<typename T>
void set_array(const char* STRING, int SIZE,
               const T* ARRAY,     int ARRAYSIZE)
{
    typedef Teuchos::Array<T> ArrayT;
    $self->set(std::string(STRING, SIZE),
               ArrayT(ARRAY, ARRAY + ARRAYSIZE));
}
%template(set) set_array<double>;
%template(set) set_array<int>;

#if 0
//! Array get/set
void set_array(const char* STRING, int SIZE,
               const int* ARRAY,   int ARRAYSIZE)
{
    typedef Teuchos::Array<int> ArrayT;
    $self->set(std::string(STRING, SIZE),
               ArrayT(ARRAY, ARRAY + ARRAYSIZE));
}
#endif

//! Get the length of a string or array
int get_length(const char* STRING, int SIZE)
{
    std::string key(STRING, SIZE);
#define PLIST_CHECK_RETURN(TYPE) \
if ($self->isType<TYPE >(key)) return $self->get<TYPE >(key).size();

    PLIST_CHECK_RETURN(std::string);
    PLIST_CHECK_RETURN(Teuchos::Array<int>)
    PLIST_CHECK_RETURN(Teuchos::Array<double>)

#undef PLIST_CHECK_RETURN
    // No type found
    return -1;
}

//! Delete a parameter
void remove(const char* STRING, int SIZE)
{
    $self->remove(std::string(STRING, SIZE));
}

//! Whether the given parameter exists
bool is_parameter(const char* STRING, int SIZE) const
{
    return $self->isParameter(std::string(STRING, SIZE));
}


} // End %extend
}; // end class

} // end namespace Teuchos

//---------------------------------------------------------------------------//
// end of parameterlist/Teuchos_ParameterList.i
//---------------------------------------------------------------------------//
