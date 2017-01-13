/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.12
 *
 * This file is not intended to be easily readable and contains a number of
 * coding conventions designed to improve portability and efficiency. Do not make
 * changes to this file unless you know what you are doing--modify the SWIG
 * interface file instead.
 * ----------------------------------------------------------------------------- */

#ifdef __cplusplus
/* SwigValueWrapper is described in swig.swg */
template<typename T> class SwigValueWrapper {
  struct SwigMovePointer {
    T *ptr;
    SwigMovePointer(T *p) : ptr(p) { }
    ~SwigMovePointer() { delete ptr; }
    SwigMovePointer& operator=(SwigMovePointer& rhs) { T* oldptr = ptr; ptr = 0; delete oldptr; ptr = rhs.ptr; rhs.ptr = 0; return *this; }
  } pointer;
  SwigValueWrapper& operator=(const SwigValueWrapper<T>& rhs);
  SwigValueWrapper(const SwigValueWrapper<T>& rhs);
public:
  SwigValueWrapper() : pointer(0) { }
  SwigValueWrapper& operator=(const T& t) { SwigMovePointer tmp(new T(t)); pointer = tmp; return *this; }
  operator T&() const { return *pointer.ptr; }
  T *operator&() { return pointer.ptr; }
};

template <typename T> T SwigValueInit() {
  return T();
}
#endif

/* -----------------------------------------------------------------------------
 *  This section contains generic SWIG labels for method/variable
 *  declarations/attributes, and other compiler dependent labels.
 * ----------------------------------------------------------------------------- */

/* template workaround for compilers that cannot correctly implement the C++ standard */
#ifndef SWIGTEMPLATEDISAMBIGUATOR
# if defined(__SUNPRO_CC) && (__SUNPRO_CC <= 0x560)
#  define SWIGTEMPLATEDISAMBIGUATOR template
# elif defined(__HP_aCC)
/* Needed even with `aCC -AA' when `aCC -V' reports HP ANSI C++ B3910B A.03.55 */
/* If we find a maximum version that requires this, the test would be __HP_aCC <= 35500 for A.03.55 */
#  define SWIGTEMPLATEDISAMBIGUATOR template
# else
#  define SWIGTEMPLATEDISAMBIGUATOR
# endif
#endif

/* inline attribute */
#ifndef SWIGINLINE
# if defined(__cplusplus) || (defined(__GNUC__) && !defined(__STRICT_ANSI__))
#   define SWIGINLINE inline
# else
#   define SWIGINLINE
# endif
#endif

/* attribute recognised by some compilers to avoid 'unused' warnings */
#ifndef SWIGUNUSED
# if defined(__GNUC__)
#   if !(defined(__cplusplus)) || (__GNUC__ > 3 || (__GNUC__ == 3 && __GNUC_MINOR__ >= 4))
#     define SWIGUNUSED __attribute__ ((__unused__))
#   else
#     define SWIGUNUSED
#   endif
# elif defined(__ICC)
#   define SWIGUNUSED __attribute__ ((__unused__))
# else
#   define SWIGUNUSED
# endif
#endif

#ifndef SWIG_MSC_UNSUPPRESS_4505
# if defined(_MSC_VER)
#   pragma warning(disable : 4505) /* unreferenced local function has been removed */
# endif
#endif

#ifndef SWIGUNUSEDPARM
# ifdef __cplusplus
#   define SWIGUNUSEDPARM(p)
# else
#   define SWIGUNUSEDPARM(p) p SWIGUNUSED
# endif
#endif

/* internal SWIG method */
#ifndef SWIGINTERN
# define SWIGINTERN static SWIGUNUSED
#endif

/* internal inline SWIG method */
#ifndef SWIGINTERNINLINE
# define SWIGINTERNINLINE SWIGINTERN SWIGINLINE
#endif

/* exporting methods */
#if defined(__GNUC__)
#  if (__GNUC__ >= 4) || (__GNUC__ == 3 && __GNUC_MINOR__ >= 4)
#    ifndef GCC_HASCLASSVISIBILITY
#      define GCC_HASCLASSVISIBILITY
#    endif
#  endif
#endif

#ifndef SWIGEXPORT
# if defined(_WIN32) || defined(__WIN32__) || defined(__CYGWIN__)
#   if defined(STATIC_LINKED)
#     define SWIGEXPORT
#   else
#     define SWIGEXPORT __declspec(dllexport)
#   endif
# else
#   if defined(__GNUC__) && defined(GCC_HASCLASSVISIBILITY)
#     define SWIGEXPORT __attribute__ ((visibility("default")))
#   else
#     define SWIGEXPORT
#   endif
# endif
#endif

/* calling conventions for Windows */
#ifndef SWIGSTDCALL
# if defined(_WIN32) || defined(__WIN32__) || defined(__CYGWIN__)
#   define SWIGSTDCALL __stdcall
# else
#   define SWIGSTDCALL
# endif
#endif

/* Deal with Microsoft's attempt at deprecating C standard runtime functions */
#if !defined(SWIG_NO_CRT_SECURE_NO_DEPRECATE) && defined(_MSC_VER) && !defined(_CRT_SECURE_NO_DEPRECATE)
# define _CRT_SECURE_NO_DEPRECATE
#endif

/* Deal with Microsoft's attempt at deprecating methods in the standard C++ library */
#if !defined(SWIG_NO_SCL_SECURE_NO_DEPRECATE) && defined(_MSC_VER) && !defined(_SCL_SECURE_NO_DEPRECATE)
# define _SCL_SECURE_NO_DEPRECATE
#endif

/* Deal with Apple's deprecated 'AssertMacros.h' from Carbon-framework */
#if defined(__APPLE__) && !defined(__ASSERT_MACROS_DEFINE_VERSIONS_WITHOUT_UNDERSCORES)
# define __ASSERT_MACROS_DEFINE_VERSIONS_WITHOUT_UNDERSCORES 0
#endif

/* Intel's compiler complains if a variable which was never initialised is
 * cast to void, which is a common idiom which we use to indicate that we
 * are aware a variable isn't used.  So we just silence that warning.
 * See: https://github.com/swig/swig/issues/192 for more discussion.
 */
#ifdef __INTEL_COMPILER
# pragma warning disable 592
#endif


#include "ThinVec.hh"

#ifdef __cplusplus
extern "C" {
#endif
SWIGEXPORT void swigc_print_vec(void* farg1) {
  ThinVec< double > *arg1 = 0 ;
  
  arg1 = (ThinVec< double > *)(farg1); 
  print_vec((ThinVec< double > const &)*arg1);
}


SWIGEXPORT void swigc_obtain_free(void* farg1, double* farg2, int* farg3) {
  ThinVec< double > *arg1 = 0 ;
  double *arg2 = (double *) 0 ;
  unsigned int arg3 ;
  
  arg1 = (ThinVec< double > *)(farg1); 
  arg2 = farg2;
  arg3 = *farg3;
  obtain_free((ThinVec< double > const &)*arg1,arg2,arg3);
}


SWIGEXPORT void* swigc_new_ThinVecDbl() {
  void* fresult = 0 ;
  ThinVec< double > *result = 0 ;
  
  result = (ThinVec< double > *)new ThinVec< double >();
  fresult = result; 
  return fresult;
}


SWIGEXPORT void* swigc_new_ThinVecDbl_create_fill(int* farg1, double* farg2) {
  void* fresult = 0 ;
  ThinVec< double >::size_type arg1 ;
  ThinVec< double >::value_type arg2 ;
  ThinVec< double > *result = 0 ;
  
  arg1 = *farg1;
  arg2 = *farg2;
  result = (ThinVec< double > *)new ThinVec< double >(arg1,arg2);
  fresult = result; 
  return fresult;
}


SWIGEXPORT void* swigc_new_ThinVecDbl_create_count(int* farg1) {
  void* fresult = 0 ;
  ThinVec< double >::size_type arg1 ;
  ThinVec< double > *result = 0 ;
  
  arg1 = *farg1;
  result = (ThinVec< double > *)new ThinVec< double >(arg1);
  fresult = result; 
  return fresult;
}


SWIGEXPORT bool swigc_ThinVecDbl_empty(void* farg1) {
  bool fresult = 0 ;
  ThinVec< double > *arg1 = (ThinVec< double > *) 0 ;
  bool result;
  
  arg1 = (ThinVec< double > *)(farg1); 
  result = (bool)((ThinVec< double > const *)arg1)->empty();
  fresult = result;
  return fresult;
}


SWIGEXPORT int swigc_ThinVecDbl_size(void* farg1) {
  int fresult = 0 ;
  ThinVec< double > *arg1 = (ThinVec< double > *) 0 ;
  ThinVec< double >::size_type result;
  
  arg1 = (ThinVec< double > *)(farg1); 
  result = (ThinVec< double >::size_type)((ThinVec< double > const *)arg1)->size();
  fresult = result;
  return fresult;
}


SWIGEXPORT double swigc_ThinVecDbl_get(void* farg1, int* farg2) {
  double fresult = 0 ;
  ThinVec< double > *arg1 = (ThinVec< double > *) 0 ;
  ThinVec< double >::size_type arg2 ;
  ThinVec< double >::value_type *result = 0 ;
  
  arg1 = (ThinVec< double > *)(farg1); 
  arg2 = *farg2;
  result = (ThinVec< double >::value_type *) &((ThinVec< double > const *)arg1)->get(arg2);
  fresult = *result;
  return fresult;
}


SWIGEXPORT void swigc_ThinVecDbl_set(void* farg1, int* farg2, double* farg3) {
  ThinVec< double > *arg1 = (ThinVec< double > *) 0 ;
  ThinVec< double >::size_type arg2 ;
  ThinVec< double >::value_type *arg3 = 0 ;
  
  arg1 = (ThinVec< double > *)(farg1); 
  arg2 = *farg2;
  arg3 = farg3;
  (arg1)->set(arg2,(ThinVec< double >::value_type const &)*arg3);
}


SWIGEXPORT void swigc_ThinVecDbl_resize_fill(void* farg1, int* farg2, double* farg3) {
  ThinVec< double > *arg1 = (ThinVec< double > *) 0 ;
  ThinVec< double >::size_type arg2 ;
  ThinVec< double >::value_type arg3 ;
  
  arg1 = (ThinVec< double > *)(farg1); 
  arg2 = *farg2;
  arg3 = *farg3;
  (arg1)->resize(arg2,arg3);
}


SWIGEXPORT void swigc_ThinVecDbl_resize(void* farg1, int* farg2) {
  ThinVec< double > *arg1 = (ThinVec< double > *) 0 ;
  ThinVec< double >::size_type arg2 ;
  
  arg1 = (ThinVec< double > *)(farg1); 
  arg2 = *farg2;
  (arg1)->resize(arg2);
}


SWIGEXPORT void swigc_ThinVecDbl_ass(void* farg1, double* farg2, int* farg3) {
  ThinVec< double > *arg1 = (ThinVec< double > *) 0 ;
  double *arg2 = (double *) 0 ;
  ThinVec< double >::size_type arg3 ;
  
  arg1 = (ThinVec< double > *)(farg1); 
  arg2 = farg2;
  arg3 = *farg3;
  (arg1)->assign((double const *)arg2,arg3);
}


SWIGEXPORT void swigc_ThinVecDbl_obtain(void* farg1, double* farg2, int* farg3) {
  ThinVec< double > *arg1 = (ThinVec< double > *) 0 ;
  double *arg2 = (double *) 0 ;
  ThinVec< double >::size_type arg3 ;
  
  arg1 = (ThinVec< double > *)(farg1); 
  arg2 = farg2;
  arg3 = *farg3;
  ((ThinVec< double > const *)arg1)->obtain(arg2,arg3);
}


SWIGEXPORT void swigc_delete_ThinVecDbl(void* farg1) {
  ThinVec< double > *arg1 = (ThinVec< double > *) 0 ;
  
  arg1 = (ThinVec< double > *)(farg1); 
  delete arg1;
}


SWIGEXPORT void swigc_obtain_free_d(void* farg1, double* farg2, int* farg3) {
  ThinVec< double > *arg1 = 0 ;
  double *arg2 = (double *) 0 ;
  unsigned int arg3 ;
  
  arg1 = (ThinVec< double > *)(farg1); 
  arg2 = farg2;
  arg3 = *farg3;
  obtain_free_t< double >((ThinVec< double > const &)*arg1,arg2,arg3);
}


SWIGEXPORT void* swigc_new_ThinVecInt() {
  void* fresult = 0 ;
  ThinVec< int > *result = 0 ;
  
  result = (ThinVec< int > *)new ThinVec< int >();
  fresult = result; 
  return fresult;
}


SWIGEXPORT void* swigc_new_ThinVecInt_create_fill(int* farg1, int* farg2) {
  void* fresult = 0 ;
  ThinVec< int >::size_type arg1 ;
  ThinVec< int >::value_type arg2 ;
  ThinVec< int > *result = 0 ;
  
  arg1 = *farg1;
  arg2 = *farg2;
  result = (ThinVec< int > *)new ThinVec< int >(arg1,arg2);
  fresult = result; 
  return fresult;
}


SWIGEXPORT void* swigc_new_ThinVecInt_create_count(int* farg1) {
  void* fresult = 0 ;
  ThinVec< int >::size_type arg1 ;
  ThinVec< int > *result = 0 ;
  
  arg1 = *farg1;
  result = (ThinVec< int > *)new ThinVec< int >(arg1);
  fresult = result; 
  return fresult;
}


SWIGEXPORT bool swigc_ThinVecInt_empty(void* farg1) {
  bool fresult = 0 ;
  ThinVec< int > *arg1 = (ThinVec< int > *) 0 ;
  bool result;
  
  arg1 = (ThinVec< int > *)(farg1); 
  result = (bool)((ThinVec< int > const *)arg1)->empty();
  fresult = result;
  return fresult;
}


SWIGEXPORT int swigc_ThinVecInt_size(void* farg1) {
  int fresult = 0 ;
  ThinVec< int > *arg1 = (ThinVec< int > *) 0 ;
  ThinVec< int >::size_type result;
  
  arg1 = (ThinVec< int > *)(farg1); 
  result = (ThinVec< int >::size_type)((ThinVec< int > const *)arg1)->size();
  fresult = result;
  return fresult;
}


SWIGEXPORT int swigc_ThinVecInt_get(void* farg1, int* farg2) {
  int fresult = 0 ;
  ThinVec< int > *arg1 = (ThinVec< int > *) 0 ;
  ThinVec< int >::size_type arg2 ;
  ThinVec< int >::value_type *result = 0 ;
  
  arg1 = (ThinVec< int > *)(farg1); 
  arg2 = *farg2;
  result = (ThinVec< int >::value_type *) &((ThinVec< int > const *)arg1)->get(arg2);
  fresult = *result;
  return fresult;
}


SWIGEXPORT void swigc_ThinVecInt_set(void* farg1, int* farg2, int* farg3) {
  ThinVec< int > *arg1 = (ThinVec< int > *) 0 ;
  ThinVec< int >::size_type arg2 ;
  ThinVec< int >::value_type *arg3 = 0 ;
  
  arg1 = (ThinVec< int > *)(farg1); 
  arg2 = *farg2;
  arg3 = farg3;
  (arg1)->set(arg2,(ThinVec< int >::value_type const &)*arg3);
}


SWIGEXPORT void swigc_ThinVecInt_resize_fill(void* farg1, int* farg2, int* farg3) {
  ThinVec< int > *arg1 = (ThinVec< int > *) 0 ;
  ThinVec< int >::size_type arg2 ;
  ThinVec< int >::value_type arg3 ;
  
  arg1 = (ThinVec< int > *)(farg1); 
  arg2 = *farg2;
  arg3 = *farg3;
  (arg1)->resize(arg2,arg3);
}


SWIGEXPORT void swigc_ThinVecInt_resize(void* farg1, int* farg2) {
  ThinVec< int > *arg1 = (ThinVec< int > *) 0 ;
  ThinVec< int >::size_type arg2 ;
  
  arg1 = (ThinVec< int > *)(farg1); 
  arg2 = *farg2;
  (arg1)->resize(arg2);
}


SWIGEXPORT void swigc_ThinVecInt_ass(void* farg1, int* farg2, int* farg3) {
  ThinVec< int > *arg1 = (ThinVec< int > *) 0 ;
  int *arg2 = (int *) 0 ;
  ThinVec< int >::size_type arg3 ;
  
  arg1 = (ThinVec< int > *)(farg1); 
  arg2 = farg2;
  arg3 = *farg3;
  (arg1)->assign((int const *)arg2,arg3);
}


SWIGEXPORT void swigc_ThinVecInt_obtain(void* farg1, int* farg2, int* farg3) {
  ThinVec< int > *arg1 = (ThinVec< int > *) 0 ;
  int *arg2 = (int *) 0 ;
  ThinVec< int >::size_type arg3 ;
  
  arg1 = (ThinVec< int > *)(farg1); 
  arg2 = farg2;
  arg3 = *farg3;
  ((ThinVec< int > const *)arg1)->obtain(arg2,arg3);
}


SWIGEXPORT void swigc_delete_ThinVecInt(void* farg1) {
  ThinVec< int > *arg1 = (ThinVec< int > *) 0 ;
  
  arg1 = (ThinVec< int > *)(farg1); 
  delete arg1;
}


SWIGEXPORT void swigc_obtain_free_i(void* farg1, int* farg2, int* farg3) {
  ThinVec< int > *arg1 = 0 ;
  int *arg2 = (int *) 0 ;
  unsigned int arg3 ;
  
  arg1 = (ThinVec< int > *)(farg1); 
  arg2 = farg2;
  arg3 = *farg3;
  obtain_free_t< int >((ThinVec< int > const &)*arg1,arg2,arg3);
}


#ifdef __cplusplus
}
#endif

