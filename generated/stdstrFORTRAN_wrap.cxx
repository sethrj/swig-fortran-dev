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


#include "stdstr.hh"


#include <utility>


#include <stdexcept>
#include <algorithm>
#include <sstream>


#include <string>



enum SwigfProxyFlag {
    SWIGF_UNINIT = -1,
    SWIGF_OWNER = 0,
    SWIGF_MOVING = 1,
    SWIGF_REFERENCE = 2,
    SWIGF_CONST_REFERENCE = 3
};



struct SwigfClassWrapper
{
    void*          ptr;
    SwigfProxyFlag flag;
};

SwigfClassWrapper SwigfClassWrapper_uninitialized()
{
    SwigfClassWrapper result;
    result.ptr  = NULL;
    result.flag = SWIGF_UNINIT;
    return result;
}

SWIGINTERN void std_string_set(std::string *self,std::string::size_type pos,std::string::value_type v){
        // TODO: check range
        (*self)[pos] = v;
    }
SWIGINTERN std::string::value_type std_string_get(std::string *self,std::string::size_type pos){
        // TODO: check range
        return (*self)[pos];
    }

template<class T>
struct SwigfArrayWrapper
{
    T* data;
    std::size_t size;
};

SWIGINTERN void std_string_assign_from(std::string *self,std::pair< char const *,std::size_t > view){
        self->assign(view.first, view.first + view.second);
    }
SWIGINTERN std::pair< char const *,std::size_t > std_string_view(std::string *self){
        if (self->empty())
            return {nullptr, 0};
        return {self->data(), self->size()};
    }
SWIGINTERN void std_string_copy_to(std::string *self,std::pair< char *,std::size_t > view){
        if (view.second < self->size())
        {
            std::ostringstream os;
            os << "String size too small: " << view.second
                << " < " << self->size();
            throw std::range_error(os.str());
        }

        char* s = view.first;
        s = std::copy(self->begin(), self->end(), s);
        std::fill_n(s, view.second - self->size(), ' ');
    }
#ifdef __cplusplus
extern "C" {
#endif
SWIGEXPORT SwigfClassWrapper swigc_new_string() {
  SwigfClassWrapper fresult ;
  std::string *result = 0 ;
  
  result = (std::string *)new std::string();
  fresult.ptr  = result;
  fresult.flag = (1 ? SWIGF_MOVING : SWIGF_REFERENCE);
  return fresult;
}


SWIGEXPORT void swigc_string_resize(SwigfClassWrapper const *farg1, long const *farg2) {
  std::string *arg1 = (std::string *) 0 ;
  std::string::size_type arg2 ;
  
  arg1 = static_cast< std::string * >(farg1->ptr);
  arg2 = *farg2;
  (arg1)->resize(arg2);
  
}


SWIGEXPORT void swigc_string_clear(SwigfClassWrapper const *farg1) {
  std::string *arg1 = (std::string *) 0 ;
  
  arg1 = static_cast< std::string * >(farg1->ptr);
  (arg1)->clear();
  
}


SWIGEXPORT long swigc_string_size(SwigfClassWrapper const *farg1) {
  long fresult ;
  std::string *arg1 = (std::string *) 0 ;
  std::string::size_type result;
  
  arg1 = static_cast< std::string* >(farg1->ptr);
  result = (std::string::size_type)((std::string const *)arg1)->size();
  fresult = result;
  return fresult;
}


SWIGEXPORT long swigc_string_length(SwigfClassWrapper const *farg1) {
  long fresult ;
  std::string *arg1 = (std::string *) 0 ;
  std::string::size_type result;
  
  arg1 = static_cast< std::string* >(farg1->ptr);
  result = (std::string::size_type)((std::string const *)arg1)->length();
  fresult = result;
  return fresult;
}


SWIGEXPORT void swigc_string_set(SwigfClassWrapper const *farg1, long const *farg2, char const *farg3) {
  std::string *arg1 = (std::string *) 0 ;
  std::string::size_type arg2 ;
  std::string::value_type arg3 ;
  
  arg1 = static_cast< std::string * >(farg1->ptr);
  arg2 = *farg2;
  arg3 = *farg3;
  std_string_set(arg1,arg2,arg3);
  
}


SWIGEXPORT char swigc_string_get(SwigfClassWrapper const *farg1, long const *farg2) {
  char fresult ;
  std::string *arg1 = (std::string *) 0 ;
  std::string::size_type arg2 ;
  std::string::value_type result;
  
  arg1 = static_cast< std::string * >(farg1->ptr);
  arg2 = *farg2;
  result = (std::string::value_type)std_string_get(arg1,arg2);
  fresult = result;
  return fresult;
}


SWIGEXPORT void swigc_string_assign_from(SwigfClassWrapper const *farg1, SwigfArrayWrapper< char const > *farg2) {
  std::string *arg1 = (std::string *) 0 ;
  std::pair< char const *,std::size_t > arg2 ;
  
  arg2 = ::std::pair< const char*, std::size_t >();
  arg1 = static_cast< std::string * >(farg1->ptr);
  (&arg2)->first  = farg2->data;
  (&arg2)->second = farg2->size;
  std_string_assign_from(arg1,arg2);
  
}


SWIGEXPORT SwigfArrayWrapper< char const > swigc_string_view(SwigfClassWrapper const *farg1) {
  SwigfArrayWrapper< char const > fresult ;
  std::string *arg1 = (std::string *) 0 ;
  std::pair< char const *,std::size_t > result;
  
  arg1 = static_cast< std::string * >(farg1->ptr);
  result = std_string_view(arg1);
  fresult.data = (&result)->first;
  fresult.size = (&result)->second;
  return fresult;
}


SWIGEXPORT void swigc_string_copy_to(SwigfClassWrapper const *farg1, SwigfArrayWrapper< char > *farg2) {
  std::string *arg1 = (std::string *) 0 ;
  std::pair< char *,std::size_t > arg2 ;
  
  arg2 = ::std::pair< char*, std::size_t >();
  arg1 = static_cast< std::string * >(farg1->ptr);
  (&arg2)->first  = farg2->data;
  (&arg2)->second = farg2->size;
  std_string_copy_to(arg1,arg2);
  
}


SWIGEXPORT void swigc_delete_string(SwigfClassWrapper const *farg1) {
  std::string *arg1 = (std::string *) 0 ;
  
  arg1 = static_cast< std::string * >(farg1->ptr);
  delete arg1;
  
}


SWIGEXPORT void swigc_print_str(SwigfClassWrapper const *farg1) {
  std::string *arg1 = 0 ;
  
  arg1 = static_cast< std::string* >(farg1->ptr);
  print_str((std::string const &)*arg1);
  
}


SWIGEXPORT void swigc_halve_str(SwigfClassWrapper const *farg1) {
  std::string *arg1 = 0 ;
  
  arg1 = static_cast< std::string * >(farg1->ptr);
  halve_str(*arg1);
  
}


#ifdef __cplusplus
}
#endif

