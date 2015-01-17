#ifndef ScaleSTL_Vec_H
#define	ScaleSTL_Vec_H

#include <vector>
#include <cstddef>

/**
 * \class ScaleSTL::Vec<T>
 * Template override of the std::vector<T> class
 * to provide convenience methods and a interface from
 * which Fortran bindings can be exposed.
 */
namespace ScaleSTL {

template <class T>
class Vec : public std::vector<T> {

public:
    Vec();
    Vec(const std::vector<T>& orig);
    explicit Vec(size_t num_elements);
    ~Vec();

    //inserts and moves
    void insert(size_t index, const T& item);
    //replaces
    void set(size_t index, const T& item);
    //erases and moves
    void erase(size_t index);
    //checks
    bool contains(const T& item);

    //element length in words (or string length for strings)
    size_t element_length(size_t index);
    size_t max_element_length();
    size_t total_element_length();

    //complex operations (not yet enabled)
    //void sort();
    //bool increasing();
    //bool decreasing();
    //void merge(const std::vector<T>& in);
    //void assign(const std::vector<T>& in);
    //void reverse_sort();
    //void reverse();

};

} //namespace

#include "Vec.i.h"

#endif	/* ScaleSTL_Vec_H */
