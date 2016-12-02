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

//===========================================================================//
/*!
 * \class SimpleClass
 * \brief Simple test class
 */
//===========================================================================//

class SimpleClass
{
  private:
    // >>> DATA

    double d_storage;

  public:

    // Constructor
    SimpleClass();

    // Other constructor
    //explicit SimpleClass(double d);

    // Destructor
    ~SimpleClass();

    // Set the value
    void set(double val);

    // Multiply the value by 2
    void double_it();

    // Access the value
    double get() const;

    // Access the value, multiplied by some parameter
    double get_multiplied(int multiple) const;
};

//---------------------------------------------------------------------------//
#endif // simple_class_SimpleClass_hh

//---------------------------------------------------------------------------//
// end of simple_class/SimpleClass.hh
//---------------------------------------------------------------------------//
