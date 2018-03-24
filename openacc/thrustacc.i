%module thrustacc;

%include <openacc.i>
%include <thrust.i>

%{
#include <thrust/sort.h>
%}

%inline %{
template<typename T>
void swig_thrust_sort(thrust::device_ptr<T> DATA, size_t SIZE) {
    thrust::sort(DATA, DATA + SIZE);
}
%}

%template(sort) swig_thrust_sort<int>;
%template(sort) swig_thrust_sort<float>;
%template(sort) swig_thrust_sort<double>;
