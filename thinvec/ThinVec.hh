//---------------------------------*-C++-*-----------------------------------//
/*!
 * \file   thinvec/ThinVec.hh
 * \author Seth R Johnson
 * \date   Mon Jan 19 08:59:42 2015
 * \brief  thinvec class declaration.
 * \note   Copyright (c) 2015 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//

#ifndef thinvec_ThinVec_hh
#define thinvec_ThinVec_hh

#include <vector>

template<class T>
class ThinVec
{
  private:
    std::vector<T> d_data;

  public:
    typedef unsigned int size_type;
    typedef T value_type;

  public:
    // Constructors
    ThinVec()
        : d_data()
    { /* * */ }

#if 0
    ThinVec(size_type count, value_type fillval = 0)
        : d_data(count, fillval)
    { /* * */ }
#endif

    // Accessors
    bool empty()
    { return d_data.empty(); }

    size_type size()
    { return d_data.size(); }

    const value_type& get(size_type index)
    { return d_data.at(index); }

    void set(size_type index, const value_type& value)
    { d_data.at(index) = value; }

    //void resize(size_type newsize, value_type fillval = T())
    void resize(size_type newsize)
    { d_data.resize(newsize, 0); }

    const std::vector<T>& data() const { return d_data; }
};

void print_vec(const ThinVec<double>& v);

#endif // thinvec_ThinVec_hh

//---------------------------------------------------------------------------//
// end of swig-dev/thinvec/ThinVec.hh
//---------------------------------------------------------------------------//
