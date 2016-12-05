//---------------------------------*-C++-*-----------------------------------//
/*!
 * \file   simple_class/SimpleClass.hh
 * \author Seth R Johnson
 * \date   Thu Dec 01 15:07:23 2016
 * \brief  SimpleClass class declaration.
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//

#ifndef simple_class_SimpleClass_hh
#define simple_class_SimpleClass_hh

class Foo;

//===========================================================================//
/*!
 * \class SimpleClass
 * \brief Simple test class
 */
//===========================================================================//

class SimpleClass
{
  public:
    typedef double storage_type;
    typedef int    multiple_type;

  private:
    // >>> DATA

    storage_type d_storage;

  public:

    // Constructor
    SimpleClass();

    // Other constructor
    //explicit SimpleClass(double d);

    // Destructor
    ~SimpleClass();

    // Set the value
    void set(storage_type val);

    // Multiply the value by 2
    void double_it();

    // Access the value
    storage_type get() const;

    // Access the value
    //storage_type get_foo(const Foo& a) const;
    template<class T>
    void action(T& val) { val *= 2; }

    // Access the value, multiplied by some parameter
    storage_type get_multiplied(multiple_type multiple) const;
};

// Free function
void print_value(const SimpleClass& c);

//---------------------------------------------------------------------------//
#endif // simple_class_SimpleClass_hh

//---------------------------------------------------------------------------//
// end of simple_class/SimpleClass.hh
//---------------------------------------------------------------------------//
