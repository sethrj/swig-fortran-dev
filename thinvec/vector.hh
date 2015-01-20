//---------------------------------*-C++-*-----------------------------------//
/*!
 * \file   thinvec/vector.hh
 * \author Seth R Johnson
 * \date   Mon Jan 19 08:59:42 2015
 * \brief  vector class declaration.
 * \note   Copyright (c) 2015 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//

#ifndef thinvec_vector_hh
#define thinvec_vector_hh

template<class T>
class vector
{
  public:
    typedef unsigned int size_type;
    typedef T       value_type;

  public:
    // Constructors
    vector();
    vector(size_type count, value_type fillval = 0);

    // Accessors
    bool empty();
    size_type size();
    const value_type& get(size_type index);
    void set(size_type index, const value_type& value);

    void resize(size_type index, const value_type &fillval = T());
};

void do_something(const vector<double>& v);
//void do_something(const vector& v);

#endif // thinvec_vector_hh

//---------------------------------------------------------------------------//
// end of swig-dev/hypothetical_vec/vector.hh
//---------------------------------------------------------------------------//
