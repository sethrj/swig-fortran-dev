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




#include <string>
#include <stdexcept>
#include <algorithm>
namespace swig
{
int fortran_exception_code = 0;
std::string fortran_exception_str;

SWIGINTERN void fortran_delayed_exception_check()
{
    if (fortran_exception_code != 0)
        throw std::runtime_error("An unhandled exception occurred: "
                                 + fortran_exception_str);
}

SWIGINTERN void fortran_store_exception(int code, const char *msg)
{
    fortran_exception_code = code;
    fortran_exception_str = msg;
}
}


//! Get the error code from a thrown error
int get_swig_ierr() { return swig::fortran_exception_code; }
//! Get the string corresponding to an error
void get_swig_serr(char* STRING, int SIZE)
{
    int minsize = std::min<int>(SIZE, swig::fortran_exception_str.size());

    char* dst = STRING;
    dst = std::copy(swig::fortran_exception_str.begin(),
                    swig::fortran_exception_str.begin() + minsize,
                    dst);
    std::fill(dst, STRING + SIZE, ' ');
}
//! Clear an exception (after handling it as needed)
void clear_swig_err()
{
    swig::fortran_exception_code = 0;
    swig::fortran_exception_str.clear();
}


#include <typeinfo>
#include <stdexcept>


#include "SimpleClass.hh"

#ifdef __cplusplus
extern "C" {
#endif
SWIGEXPORT int swigc_get_swig_ierr() {
  int fresult = 0 ;
  int result;
  
  result = (int)get_swig_ierr();
  fresult = result;
  return fresult;
}


SWIGEXPORT void swigc_get_swig_serr( char*  farg1, int* farg2) {
  char *arg1 = (char *) 0 ;
  int arg2 ;
  
  arg1 = (char *)farg1; 
  arg2 = *farg2;
  get_swig_serr(arg1,arg2);
}


SWIGEXPORT void swigc_clear_swig_err() {
  clear_swig_err();
}


SWIGEXPORT void* swigc_new_SimpleClass__SWIG_0() {
  void* fresult = 0 ;
  SimpleClass *result = 0 ;
  
  result = (SimpleClass *)new SimpleClass();
  fresult = result; 
  return fresult;
}


SWIGEXPORT void* swigc_new_SimpleClass__SWIG_1(void* farg1) {
  void* fresult = 0 ;
  SimpleClass *arg1 = 0 ;
  SimpleClass *result = 0 ;
  
  arg1 = (SimpleClass *)(farg1); 
  result = (SimpleClass *)new SimpleClass((SimpleClass const &)*arg1);
  fresult = result; 
  return fresult;
}


SWIGEXPORT void* swigc_new_SimpleClass__SWIG_2(double* farg1) {
  void* fresult = 0 ;
  double arg1 ;
  SimpleClass *result = 0 ;
  
  arg1 = *farg1;
  result = (SimpleClass *)new SimpleClass(arg1);
  fresult = result; 
  return fresult;
}


SWIGEXPORT void swigc_delete_SimpleClass(void* farg1) {
  SimpleClass *arg1 = (SimpleClass *) 0 ;
  
  arg1 = (SimpleClass *)(farg1); 
  delete arg1;
}


SWIGEXPORT void swigc_SimpleClass_set(void* farg1, int* farg2) {
  SimpleClass *arg1 = (SimpleClass *) 0 ;
  SimpleClass::storage_type arg2 ;
  
  arg1 = (SimpleClass *)(farg1); 
  arg2 = *farg2;
  (arg1)->set(arg2);
}


SWIGEXPORT void swigc_SimpleClass_double_it(void* farg1) {
  SimpleClass *arg1 = (SimpleClass *) 0 ;
  
  arg1 = (SimpleClass *)(farg1); 
  (arg1)->double_it();
}


SWIGEXPORT int swigc_SimpleClass_get(void* farg1) {
  int fresult = 0 ;
  SimpleClass *arg1 = (SimpleClass *) 0 ;
  SimpleClass::storage_type result;
  
  arg1 = (SimpleClass *)(farg1); 
  result = (SimpleClass::storage_type)((SimpleClass const *)arg1)->get();
  fresult = result;
  return fresult;
}


SWIGEXPORT int swigc_SimpleClass_get_multiplied(void* farg1, int* farg2) {
  int fresult = 0 ;
  SimpleClass *arg1 = (SimpleClass *) 0 ;
  SimpleClass::multiple_type arg2 ;
  SimpleClass::storage_type result;
  
  arg1 = (SimpleClass *)(farg1); 
  arg2 = *farg2;
  result = (SimpleClass::storage_type)((SimpleClass const *)arg1)->get_multiplied(arg2);
  fresult = result;
  return fresult;
}


SWIGEXPORT void swigc_print_value(void* farg1) {
  SimpleClass *arg1 = 0 ;
  
  arg1 = (SimpleClass *)(farg1); 
  print_value((SimpleClass const &)*arg1);
}


SWIGEXPORT void* swigc_make_class(int* farg1) {
  void* fresult = 0 ;
  SimpleClass::storage_type arg1 ;
  SimpleClass result;
  
  arg1 = *farg1;
  result = make_class(arg1);
  
#if __cplusplus >= 201103L
  fresult = new SimpleClass(std::move(result));
#else
  fresult = new SimpleClass(result);
#endif
  
  return fresult;
}


SWIGEXPORT void* swigc_get_class() {
  void* fresult = 0 ;
  SimpleClass *result = 0 ;
  
  result = (SimpleClass *) &get_class();
  fresult = result; 
  return fresult;
}


SWIGEXPORT void swigc_set_class_by_copy(void* farg1) {
  SimpleClass arg1 ;
  
  arg1 = *(SimpleClass *)(farg1); 
  set_class_by_copy(arg1);
}


SWIGEXPORT void swigc_print_color(int* farg1) {
  MyEnum arg1 ;
  
  arg1 = (MyEnum)(*farg1);
  print_color(arg1);
}


#ifdef __cplusplus
}
#endif

