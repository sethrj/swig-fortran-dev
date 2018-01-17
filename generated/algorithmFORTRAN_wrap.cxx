/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 4.0.0
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


#ifndef SWIGEXTERN
#ifdef __cplusplus
#define SWIGEXTERN extern
#else
#define SWIGEXTERN
#endif
#endif

/*  Errors in SWIG */
#define  SWIG_UnknownError    	   -1
#define  SWIG_IOError        	   -2
#define  SWIG_RuntimeError   	   -3
#define  SWIG_IndexError     	   -4
#define  SWIG_TypeError      	   -5
#define  SWIG_DivisionByZero 	   -6
#define  SWIG_OverflowError  	   -7
#define  SWIG_SyntaxError    	   -8
#define  SWIG_ValueError     	   -9
#define  SWIG_SystemError    	   -10
#define  SWIG_AttributeError 	   -11
#define  SWIG_MemoryError    	   -12
#define  SWIG_NullReferenceError   -13




// Default exception handler
#define SWIG_exception_impl(CODE, MSG, NULLRETURN) \
    throw std::logic_error(MSG); return NULLRETURN;


/* Contract support */
#define SWIG_contract_assert(NULLRETURN, EXPR, MSG) \
    if (!(EXPR)) { SWIG_exception_impl(SWIG_ValueError, MSG, NULLRETURN); }


#define SWIGVERSION 0x040000 
#define SWIG_VERSION SWIGVERSION


#define SWIG_as_voidptr(a) const_cast< void * >(static_cast< const void * >(a)) 
#define SWIG_as_voidptrptr(a) ((void)SWIG_as_voidptr(*a),reinterpret_cast< void** >(a)) 


#include <stdexcept>


#include "algorithm.hh"


#include <utility>


template<class T>
struct SwigfArrayWrapper
{
    T* data;
    std::size_t size;
};

#ifdef __cplusplus
extern "C" {
#endif
SWIGEXPORT void swigc_sort__SWIG_1(SwigfArrayWrapper< int > *farg1) {
  std::pair< int *,std::size_t > arg1 ;
  
  arg1 = ::std::pair< int*, std::size_t >();
  (&arg1)->first  = farg1->data;
  (&arg1)->second = farg1->size;
  sort< int >(arg1);
  
}


SWIGEXPORT void swigc_reverse__SWIG_1(SwigfArrayWrapper< int > *farg1) {
  std::pair< int *,std::size_t > arg1 ;
  
  arg1 = ::std::pair< int*, std::size_t >();
  (&arg1)->first  = farg1->data;
  (&arg1)->second = farg1->size;
  reverse< int >(arg1);
  
}


SWIGEXPORT int swigc_find_sorted__SWIG_1(SwigfArrayWrapper< int const > *farg1, int const *farg2) {
  int fresult ;
  std::pair< int const *,std::size_t > arg1 ;
  int arg2 ;
  int result;
  
  arg1 = ::std::pair< const int*, std::size_t >();
  (&arg1)->first  = farg1->data;
  (&arg1)->second = farg1->size;
  arg2 = *farg2;
  result = (int)find_sorted< int >(arg1,arg2);
  fresult = result;
  return fresult;
}


SWIGEXPORT SwigfArrayWrapper< int > swigc_get_view__SWIG_1(SwigfArrayWrapper< int > *farg1) {
  SwigfArrayWrapper< int > fresult ;
  std::pair< int *,std::size_t > arg1 ;
  std::pair< int *,std::size_t > result;
  
  arg1 = ::std::pair< int*, std::size_t >();
  (&arg1)->first  = farg1->data;
  (&arg1)->second = farg1->size;
  result = get_view< int >(arg1);
  fresult.data = (&result)->first;
  fresult.size = (&result)->second;
  return fresult;
}


SWIGEXPORT void swigc_sort__SWIG_2(SwigfArrayWrapper< float > *farg1) {
  std::pair< float *,std::size_t > arg1 ;
  
  arg1 = ::std::pair< float*, std::size_t >();
  (&arg1)->first  = farg1->data;
  (&arg1)->second = farg1->size;
  sort< float >(arg1);
  
}


SWIGEXPORT void swigc_reverse__SWIG_2(SwigfArrayWrapper< float > *farg1) {
  std::pair< float *,std::size_t > arg1 ;
  
  arg1 = ::std::pair< float*, std::size_t >();
  (&arg1)->first  = farg1->data;
  (&arg1)->second = farg1->size;
  reverse< float >(arg1);
  
}


SWIGEXPORT int swigc_find_sorted__SWIG_2(SwigfArrayWrapper< float const > *farg1, float const *farg2) {
  int fresult ;
  std::pair< float const *,std::size_t > arg1 ;
  float arg2 ;
  int result;
  
  arg1 = ::std::pair< const float*, std::size_t >();
  (&arg1)->first  = farg1->data;
  (&arg1)->second = farg1->size;
  arg2 = *farg2;
  result = (int)find_sorted< float >(arg1,arg2);
  fresult = result;
  return fresult;
}


SWIGEXPORT SwigfArrayWrapper< float > swigc_get_view__SWIG_2(SwigfArrayWrapper< float > *farg1) {
  SwigfArrayWrapper< float > fresult ;
  std::pair< float *,std::size_t > arg1 ;
  std::pair< float *,std::size_t > result;
  
  arg1 = ::std::pair< float*, std::size_t >();
  (&arg1)->first  = farg1->data;
  (&arg1)->second = farg1->size;
  result = get_view< float >(arg1);
  fresult.data = (&result)->first;
  fresult.size = (&result)->second;
  return fresult;
}


SWIGEXPORT void swigc_sort__SWIG_3(SwigfArrayWrapper< double > *farg1) {
  std::pair< double *,std::size_t > arg1 ;
  
  arg1 = ::std::pair< double*, std::size_t >();
  (&arg1)->first  = farg1->data;
  (&arg1)->second = farg1->size;
  sort< double >(arg1);
  
}


SWIGEXPORT void swigc_reverse__SWIG_3(SwigfArrayWrapper< double > *farg1) {
  std::pair< double *,std::size_t > arg1 ;
  
  arg1 = ::std::pair< double*, std::size_t >();
  (&arg1)->first  = farg1->data;
  (&arg1)->second = farg1->size;
  reverse< double >(arg1);
  
}


SWIGEXPORT int swigc_find_sorted__SWIG_3(SwigfArrayWrapper< double const > *farg1, double const *farg2) {
  int fresult ;
  std::pair< double const *,std::size_t > arg1 ;
  double arg2 ;
  int result;
  
  arg1 = ::std::pair< const double*, std::size_t >();
  (&arg1)->first  = farg1->data;
  (&arg1)->second = farg1->size;
  arg2 = *farg2;
  result = (int)find_sorted< double >(arg1,arg2);
  fresult = result;
  return fresult;
}


SWIGEXPORT SwigfArrayWrapper< double > swigc_get_view__SWIG_3(SwigfArrayWrapper< double > *farg1) {
  SwigfArrayWrapper< double > fresult ;
  std::pair< double *,std::size_t > arg1 ;
  std::pair< double *,std::size_t > result;
  
  arg1 = ::std::pair< double*, std::size_t >();
  (&arg1)->first  = farg1->data;
  (&arg1)->second = farg1->size;
  result = get_view< double >(arg1);
  fresult.data = (&result)->first;
  fresult.size = (&result)->second;
  return fresult;
}


#ifdef __cplusplus
}
#endif

