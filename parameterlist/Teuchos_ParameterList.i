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

//%teuchos_rcp(Teuchos::ParameterList)

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

    // >>> TYPED QUERIES

    // Set a parameter
    template<typename T>
    ParameterList& set(const std::string& name, T const& value);

    // Get a parameter, with default
    template<typename T>
    T& get(const std::string& name, T def_value);

    // Get a parameter, no default
    template<typename T>
    T& get(const std::string& name);

    // Whether the given parameter is a type
    template<typename T>
    bool isType(const std::string& name) const;

    // >>> TYPELESS QUERIES

    // Delete a parameter
    bool remove(const std::string& name);

    // Whether the given parameter exists
    bool isParameter(const std::string& name) const;

#endif
    %extend {

    // Constructor
    ParameterList(const char* STRING, int SIZE)
    {
        return new Teuchos::ParameterList(std::string(STRING, SIZE));
    }

%define ADD_GETSET(T)
    void set(const char* STRING, int SIZE, const T& val)
    {
        $self->set<T>(std::string(STRING, SIZE), val);
    }

    void get(const char* STRING, int SIZE, T& val)
    {
        val = $self->get<T>(std::string(STRING, SIZE));
    }
%enddef

    ADD_GETSET(int);
    ADD_GETSET(double);
    ADD_GETSET(Teuchos::ParameterList);

    // Use fortran string typemap for value as well as key
    %apply (char* STRING, int SIZE)
    { (char* STRINGVAL, int SIZEVAL) };
    %apply (const char* STRING, int SIZE)
    { (const char* STRINGVAL, int SIZEVAL) };

    // String get/set
    void set(const char* STRING, int SIZE,
             const char* STRINGVAL, int SIZEVAL)
    {
        $self->set(std::string(STRING, SIZE),
                   std::string(STRINGVAL, SIZEVAL));
    }

    void get(const char* STRING,    int SIZE,
             char* STRINGVAL, int SIZEVAL)
    {
        std::string value = $self->get<std::string>(std::string(STRING, SIZE));

        if (value.size() > SIZEVAL)
            throw std::range_error("string length too small");

        STRINGVAL = std::copy(value.begin(), value.end(), STRINGVAL);
        std::fill_n(STRINGVAL, SIZEVAL - value.size(), ' ');
    }


    // NOTE: this doesn't work, see
    // https://github.com/swig/swig/issues/876
#if 0
    template<typename T>
    void set(const char* STRING, int SIZE, const T& value)
    {
        $self->set(std::string(STRING, SIZE), value);
    }

    template<typename T>
    void get(const char* STRING, int SIZE, T& value)
    {
        ;
        value = $self->get<T>(std::string(STRING, SIZE));
    }

    // Instantiate get/set
    %template(get) get<double>;
    %template(set) set<double>;
    %template(get) get<int>;
    %template(set) set<int>;
#endif
    }
};
} // end namespace Teuchos

//---------------------------------------------------------------------------//
// end of parameterlist/Teuchos_ParameterList.i
//---------------------------------------------------------------------------//
