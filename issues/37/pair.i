%module pairtest

%include <std_pair.i>

#define PAIR_TYPE std::pair<int*, int>
#define AW_TYPE swig::SwigfArrayWrapper< int* >
#define QAW_TYPE "swig::SwigfArrayWrapper< int* >"

%fragment("SwigfArrayWrapper_cpp", "header") %{
namespace swig {
template<class T>
struct SwigfArrayWrapper
{
    T* data;
    int size;
};
}
%}

// Add array wrapper to Fortran types when used
%fragment("SwigfArrayWrapper", "fpublic", fragment="SwigfArrayWrapper_cpp",
          noblock="1") %{
type, public, bind(C) :: SwigfArrayWrapper
  type(C_PTR), public :: data
  integer(C_INT), public :: size
end type
%}

%typemap(ctype, noblock=1, out=QAW_TYPE,
       fragment="SwigfArrayWrapper") PAIR_TYPE
{AW_TYPE*}

%typemap(out) PAIR_TYPE
%{$result.data = $1.first;
  $result.size = $1.second;
%}

//%template() PAIR_TYPE;

//%novaluewrapper std::pair;

%inline %{
std::pair<int*, int> do_something();
%}
