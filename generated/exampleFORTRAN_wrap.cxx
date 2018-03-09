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

/* qualifier for exported *const* global data variables*/
#ifndef SWIGEXTERN
# ifdef __cplusplus
#   define SWIGEXTERN extern
# else
#   define SWIGEXTERN
# endif
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




#define SWIG_exception_impl(DECL, CODE, MSG, RETURNNULL) \
 { throw std::logic_error("In " DECL ": " MSG); RETURNNULL; }


extern "C" {
void SWIG_check_unhandled_exception_impl(const char* decl);
void SWIG_store_exception(const char* decl, int errcode, const char *msg);
}


#undef SWIG_exception_impl
#define SWIG_exception_impl(DECL, CODE, MSG, RETURNNULL) \
    SWIG_store_exception(DECL, CODE, MSG); RETURNNULL;


#define SWIG_check_mutable(SWIG_CLASS_WRAPPER, TYPENAME, FNAME, FUNCNAME, RETURNNULL) \
    if ((SWIG_CLASS_WRAPPER).mem == SWIG_CREF) { \
        SWIG_exception_impl(FUNCNAME, SWIG_TypeError, \
            "Cannot pass const " TYPENAME " (class " FNAME ") " \
            "as a mutable reference", \
            RETURNNULL); \
    }


#define SWIG_check_nonnull(SWIG_CLASS_WRAPPER, TYPENAME, FNAME, FUNCNAME, RETURNNULL) \
  if ((SWIG_CLASS_WRAPPER).mem == SWIG_NULL) { \
    SWIG_exception_impl(FUNCNAME, SWIG_TypeError, \
                        "Cannot pass null " TYPENAME " (class " FNAME ") " \
                        "as a reference", RETURNNULL); \
  }


#define SWIG_check_mutable_nonnull(SWIG_CLASS_WRAPPER, TYPENAME, FNAME, FUNCNAME, RETURNNULL) \
    SWIG_check_nonnull(SWIG_CLASS_WRAPPER, TYPENAME, FNAME, FUNCNAME, RETURNNULL); \
    SWIG_check_mutable(SWIG_CLASS_WRAPPER, TYPENAME, FNAME, FUNCNAME, RETURNNULL);


#include <string.h>


namespace swig {

enum AssignmentFlags {
  IS_DESTR       = 0x01,
  IS_COPY_CONSTR = 0x02,
  IS_COPY_ASSIGN = 0x04,
  IS_MOVE_CONSTR = 0x08,
  IS_MOVE_ASSIGN = 0x10
};

template<class T, int Flags>
struct assignment_flags;
}


#define SWIG_assign(LEFTTYPE, LEFT, RIGHTTYPE, RIGHT, FLAGS) \
    SWIG_assign_impl<LEFTTYPE , RIGHTTYPE, swig::assignment_flags<LEFTTYPE, FLAGS >::value >(LEFT, RIGHT);


#include <stdexcept>


#define SWIGVERSION 0x040000 
#define SWIG_VERSION SWIGVERSION


#define SWIG_as_voidptr(a) const_cast< void * >(static_cast< const void * >(a)) 
#define SWIG_as_voidptrptr(a) ((void)SWIG_as_voidptr(*a),reinterpret_cast< void** >(a)) 


#include "example.h"


#include <stdlib.h>
#ifdef _MSC_VER
# ifndef strtoull
#  define strtoull _strtoui64
# endif
# ifndef strtoll
#  define strtoll _strtoi64
# endif
#endif


struct SwigArrayWrapper {
    void* data;
    size_t size;
};


SWIGINTERN SwigArrayWrapper SwigArrayWrapper_uninitialized() {
  SwigArrayWrapper result;
  result.data = NULL;
  result.size = 0;
  return result;
}


#include <string>


#include <cctype>


// Stored exception message
SWIGINTERN std::string* swig_last_exception_msg = NULL;
// Inlined error retrieval function
SWIGINTERN const std::string& get_serr()
{
    if (!swig_last_exception_msg || swig_last_exception_msg->empty()) {
        SWIG_store_exception("UNKNOWN", SWIG_RuntimeError,
                             "no error string was present");

    }
    return *swig_last_exception_msg;
}

extern "C" {
// Stored exception integer
SWIGEXPORT int ierr = 0;

// Call this function before any new action
SWIGEXPORT void SWIG_check_unhandled_exception_impl(const char* decl) {
  if (ierr != 0) {
    // Construct message; calling the error string function ensures that
    // the string is allocated if the user did something goofy like
    // manually setting the integer. Since this function is not expected to
    // be wrapped by a catch statement, it will probably terminate the
    // program.
    std::string msg("An unhandled exception occurred before a call to ");
    msg += decl;
    msg += "; ";
    std::string prev_msg = get_serr();
    prev_msg[0] = std::tolower(prev_msg[0]);
    msg += prev_msg;
    throw std::runtime_error(msg);
  }
}

// Save an exception to the fortran error code and string
SWIGEXPORT void SWIG_store_exception(const char *decl,
                                     int errcode,
                                     const char *msg) {
  ::ierr = errcode;

  if (!swig_last_exception_msg) {
    swig_last_exception_msg = new std::string;
  }
  // Save the message to a std::string first
  *swig_last_exception_msg = "In ";
  *swig_last_exception_msg += decl;
  *swig_last_exception_msg += ": ";
  *swig_last_exception_msg += msg;
}
}


enum SwigMemState {
    SWIG_NULL = 0,
    SWIG_OWN,
    SWIG_MOVE,
    SWIG_REF,
    SWIG_CREF
};


struct SwigClassWrapper {
    void* ptr;
    SwigMemState mem;
};


SWIGINTERN SwigClassWrapper SwigClassWrapper_uninitialized() {
    SwigClassWrapper result;
    result.ptr = NULL;
    result.mem = SWIG_NULL;
    return result;
}


#include <utility>


namespace swig {

// Define our own switching struct to support pre-c++11 builds
template<bool Val>
struct bool_constant {};
typedef bool_constant<true>  true_type;
typedef bool_constant<false> false_type;

// Deletion
template<class T>
SWIGINTERN void destruct_impl(T* self, true_type) {
  delete self;
}
template<class T>
SWIGINTERN T* destruct_impl(T* , false_type) {
  SWIG_exception_impl("assignment", SWIG_TypeError,
                      "Invalid assignment: class type has no destructor",
                      return NULL);
}

// Copy construction and assignment
template<class T, class U>
SWIGINTERN T* copy_construct_impl(const U* other, true_type) {
  return new T(*other);
}
template<class T, class U>
SWIGINTERN void copy_assign_impl(T* self, const U* other, true_type) {
  *self = *other;
}

// Disabled construction and assignment
template<class T, class U>
SWIGINTERN T* copy_construct_impl(const U* , false_type) {
  SWIG_exception_impl("assignment", SWIG_TypeError,
                      "Invalid assignment: class type has no copy constructor",
                      return NULL);
}
template<class T, class U>
SWIGINTERN void copy_assign_impl(T* , const U* , false_type) {
  SWIG_exception_impl("assignment", SWIG_TypeError,
                      "Invalid assignment: class type has no copy assignment",
                      return);
}

#if __cplusplus >= 201103L
#include <utility>
#include <type_traits>

// Move construction and assignment
template<class T, class U>
SWIGINTERN T* move_construct_impl(U* other, true_type) {
  return new T(std::move(*other));
}
template<class T, class U>
SWIGINTERN void move_assign_impl(T* self, U* other, true_type) {
  *self = std::move(*other);
}

// Disabled move construction and assignment
template<class T, class U>
SWIGINTERN T* move_construct_impl(U*, false_type) {
  SWIG_exception_impl("assignment", SWIG_TypeError,
                      "Invalid assignment: class type has no move constructor",
                      return NULL);
}
template<class T, class U>
SWIGINTERN void move_assign_impl(T*, U*, false_type) {
  SWIG_exception_impl("assignment", SWIG_TypeError,
                      "Invalid assignment: class type has no move assignment",
                      return);
}

template<class T, int Flags>
struct assignment_flags {
  constexpr static int value =
             (std::is_destructible<T>::value       ? IS_DESTR       : 0)
           | (std::is_copy_constructible<T>::value ? IS_COPY_CONSTR : 0)
           | (std::is_copy_assignable<T>::value    ? IS_COPY_ASSIGN : 0)
           | (std::is_move_constructible<T>::value ? IS_MOVE_CONSTR : 0)
           | (std::is_move_assignable<T>::value    ? IS_MOVE_ASSIGN : 0);
};

#else

template<class T, int Flags>
struct assignment_flags {
  enum { value = Flags };
};

#endif

template<class T, int Flags>
struct AssignmentTraits {
  static void destruct(T* self) {
    destruct_impl<T>(self, bool_constant<Flags & IS_DESTR>());
  }

  template<class U>
  static T* copy_construct(const U* other) {
    return copy_construct_impl<T,U>(other, bool_constant<bool(Flags & IS_COPY_CONSTR)>());
  }

  template<class U>
  static void copy_assign(T* self, const U* other) {
    copy_assign_impl<T,U>(self, other, bool_constant<bool(Flags & IS_COPY_ASSIGN)>());
  }

#if __cplusplus >= 201103L
  template<class U>
  static T* move_construct(U* other) {
    return move_construct_impl<T,U>(other, bool_constant<bool(Flags & IS_MOVE_CONSTR)>());
  }
  template<class U>
  static void move_assign(T* self, U* other) {
    move_assign_impl<T,U>(self, other, bool_constant<bool(Flags & IS_MOVE_ASSIGN)>());
  }
#else
  template<class U>
  static T* move_construct(U* other) {
    return copy_construct_impl<T,U>(other, bool_constant<bool(Flags & IS_COPY_CONSTR)>());
  }
  template<class U>
  static void move_assign(T* self, U* other) {
    copy_assign_impl<T,U>(self, other, bool_constant<bool(Flags & IS_COPY_ASSIGN)>());
  }
#endif
};

} // end namespace swig


template<class T1, class T2, int AFlags>
SWIGINTERN void SWIG_assign_impl(SwigClassWrapper* self, SwigClassWrapper* other) {
  typedef swig::AssignmentTraits<T1, AFlags> Traits_t;
  T1* pself  = static_cast<T1*>(self->ptr);
  T2* pother = static_cast<T2*>(other->ptr);

  switch (self->mem) {
    case SWIG_NULL:
      /* LHS is unassigned */
      switch (other->mem) {
        case SWIG_NULL: /* null op */ break;
        case SWIG_MOVE: /* capture pointer from RHS */
          self->ptr = other->ptr;
          other->ptr = NULL;
          self->mem = SWIG_OWN;
          other->mem = SWIG_NULL;
          break;
        case SWIG_OWN: /* copy from RHS */
          self->ptr = Traits_t::copy_construct(pother);
          self->mem = SWIG_OWN;
          break;
        case SWIG_REF: /* pointer to RHS */
        case SWIG_CREF:
          self->ptr = other->ptr;
          self->mem = other->mem;
          break;
      }
      break;
    case SWIG_OWN:
      /* LHS owns memory */
      switch (other->mem) {
        case SWIG_NULL:
          /* Delete LHS */
          Traits_t::destruct(pself);
          self->ptr = NULL;
          self->mem = SWIG_NULL;
          break;
        case SWIG_MOVE:
          /* Move RHS into LHS; delete RHS */
          Traits_t::move_assign(pself, pother);
          Traits_t::destruct(pother);
          other->ptr = NULL;
          other->mem = SWIG_NULL;
          break;
        case SWIG_OWN:
        case SWIG_REF:
        case SWIG_CREF:
          /* Copy RHS to LHS */
          Traits_t::copy_assign(pself, pother);
          break;
      }
      break;
    case SWIG_MOVE:
      SWIG_exception_impl("assignment", SWIG_RuntimeError,
        "Left-hand side of assignment should never be in a 'MOVE' state",
        return);
      break;
    case SWIG_REF:
      /* LHS is a reference */
      switch (other->mem) {
        case SWIG_NULL:
          /* Remove LHS reference */
          self->ptr = NULL;
          self->mem = SWIG_NULL;
          break;
        case SWIG_MOVE:
          /* Move RHS into LHS; delete RHS. The original ownership stays the
           * same. */
          Traits_t::move_assign(pself, pother);
          Traits_t::destruct(pother);
          other->ptr = NULL;
          other->mem = SWIG_NULL;
          break;
        case SWIG_OWN:
        case SWIG_REF:
        case SWIG_CREF:
          /* Copy RHS to LHS */
          Traits_t::copy_assign(pself, pother);
          break;
      }
      break;
    case SWIG_CREF:
      switch (other->mem) {
        case SWIG_NULL:
          /* Remove LHS reference */
          self->ptr = NULL;
          self->mem = SWIG_NULL;
        default:
          SWIG_exception_impl("assignment", SWIG_RuntimeError,
              "Cannot assign to a const reference", return);
          break;
      }
      break;
  }
}

#ifdef __cplusplus
extern "C" {
#endif
SWIGEXPORT SwigArrayWrapper swigc_get_serr() {
  SwigArrayWrapper fresult ;
  std::string *result = 0 ;
  
  result = (std::string *) &get_serr();
  fresult.data = (result->empty() ? NULL : &(*result->begin()));
  fresult.size = result->size();
  return fresult;
}


SWIGEXPORT void swigc_set_Shape_nshapes(int const *farg1) {
  int arg1 ;
  
  arg1 = *farg1;
  Shape::nshapes = arg1;
  
}


SWIGEXPORT int swigc_get_Shape_nshapes() {
  int fresult ;
  int result;
  
  result = (int)Shape::nshapes;
  fresult = result;
  return fresult;
}


SWIGEXPORT void swigc_set_Shape_x(SwigClassWrapper const *farg1, float const *farg2) {
  Shape *arg1 = (Shape *) 0 ;
  double arg2 ;
  
  SWIG_check_mutable_nonnull(*farg1, "Shape *", "Shape", "Shape::x", return );
  arg1 = static_cast< Shape * >(farg1->ptr);
  arg2 = *farg2;
  if (arg1) (arg1)->x = arg2;
  
}


SWIGEXPORT float swigc_get_Shape_x(SwigClassWrapper const *farg1) {
  float fresult ;
  Shape *arg1 = (Shape *) 0 ;
  double result;
  
  SWIG_check_mutable_nonnull(*farg1, "Shape *", "Shape", "Shape::x", return 0);
  arg1 = static_cast< Shape * >(farg1->ptr);
  result = (double) ((arg1)->x);
  fresult = result;
  return fresult;
}


SWIGEXPORT void swigc_set_Shape_y(SwigClassWrapper const *farg1, float const *farg2) {
  Shape *arg1 = (Shape *) 0 ;
  double arg2 ;
  
  SWIG_check_mutable_nonnull(*farg1, "Shape *", "Shape", "Shape::y", return );
  arg1 = static_cast< Shape * >(farg1->ptr);
  arg2 = *farg2;
  if (arg1) (arg1)->y = arg2;
  
}


SWIGEXPORT float swigc_get_Shape_y(SwigClassWrapper const *farg1) {
  float fresult ;
  Shape *arg1 = (Shape *) 0 ;
  double result;
  
  SWIG_check_mutable_nonnull(*farg1, "Shape *", "Shape", "Shape::y", return 0);
  arg1 = static_cast< Shape * >(farg1->ptr);
  result = (double) ((arg1)->y);
  fresult = result;
  return fresult;
}


SWIGEXPORT void swigc_delete_Shape(SwigClassWrapper const *farg1) {
  Shape *arg1 = (Shape *) 0 ;
  
  SWIG_check_mutable_nonnull(*farg1, "Shape *", "Shape", "Shape::~Shape()", return );
  arg1 = static_cast< Shape * >(farg1->ptr);
  {
    try {
      delete arg1;
    } catch (const std::exception& e) {
      SWIG_exception_impl("Shape::~Shape()", SWIG_RuntimeError, e.what(), return );
    }
  }
  
}


SWIGEXPORT float swigc_Shape_area(SwigClassWrapper const *farg1) {
  float fresult ;
  Shape *arg1 = (Shape *) 0 ;
  double result;
  
  SWIG_check_nonnull(*farg1, "Shape const *", "Shape", "Shape::area() const", return 0);
  arg1 = static_cast< Shape * >(farg1->ptr);
  {
    try {
      result = (double)((Shape const *)arg1)->area();
    } catch (const std::exception& e) {
      SWIG_exception_impl("Shape::area() const", SWIG_RuntimeError, e.what(), return 0);
    }
  }
  fresult = result;
  return fresult;
}


SWIGEXPORT float swigc_Shape_perimeter(SwigClassWrapper const *farg1) {
  float fresult ;
  Shape *arg1 = (Shape *) 0 ;
  double result;
  
  SWIG_check_nonnull(*farg1, "Shape const *", "Shape", "Shape::perimeter() const", return 0);
  arg1 = static_cast< Shape * >(farg1->ptr);
  {
    try {
      result = (double)((Shape const *)arg1)->perimeter();
    } catch (const std::exception& e) {
      SWIG_exception_impl("Shape::perimeter() const", SWIG_RuntimeError, e.what(), return 0);
    }
  }
  fresult = result;
  return fresult;
}


SWIGEXPORT SwigArrayWrapper swigc_Shape_kind(SwigClassWrapper const *farg1) {
  SwigArrayWrapper fresult ;
  Shape *arg1 = (Shape *) 0 ;
  char *result = 0 ;
  
  SWIG_check_nonnull(*farg1, "Shape const *", "Shape", "Shape::kind() const", return SwigArrayWrapper_uninitialized());
  arg1 = static_cast< Shape * >(farg1->ptr);
  {
    try {
      result = (char *)((Shape const *)arg1)->kind();
    } catch (const std::exception& e) {
      SWIG_exception_impl("Shape::kind() const", SWIG_RuntimeError, e.what(), return SwigArrayWrapper_uninitialized());
    }
  }
  fresult.size = strlen(reinterpret_cast< const char* >(result));
  if (0) {
    fresult.data = malloc(fresult.size);
    memcpy(fresult.data, result, fresult.size);
  } else {
    fresult.data = const_cast< char * >(result);
  }
  return fresult;
}


SWIGEXPORT void swigc_assignment_Shape(SwigClassWrapper * self, SwigClassWrapper const * other) {
  typedef ::Shape swig_lhs_classtype;
  SWIG_assign(swig_lhs_classtype, self,
    swig_lhs_classtype, const_cast<SwigClassWrapper*>(other),
    0 | swig::IS_DESTR);
}


SWIGEXPORT SwigClassWrapper swigc_new_Circle(float const *farg1) {
  SwigClassWrapper fresult ;
  double arg1 ;
  Circle *result = 0 ;
  
  arg1 = *farg1;
  {
    try {
      result = (Circle *)new Circle(arg1);
    } catch (const std::exception& e) {
      SWIG_exception_impl("Circle::Circle(double)", SWIG_RuntimeError, e.what(), return SwigClassWrapper_uninitialized());
    }
  }
  fresult.ptr = result;
  fresult.mem = (1 ? SWIG_MOVE : SWIG_REF);
  return fresult;
}


SWIGEXPORT float swigc_Circle_area(SwigClassWrapper const *farg1) {
  float fresult ;
  Circle *arg1 = (Circle *) 0 ;
  double result;
  
  SWIG_check_nonnull(*farg1, "Circle const *", "Circle", "Circle::area() const", return 0);
  arg1 = static_cast< Circle * >(farg1->ptr);
  {
    try {
      result = (double)((Circle const *)arg1)->area();
    } catch (const std::exception& e) {
      SWIG_exception_impl("Circle::area() const", SWIG_RuntimeError, e.what(), return 0);
    }
  }
  fresult = result;
  return fresult;
}


SWIGEXPORT float swigc_Circle_perimeter(SwigClassWrapper const *farg1) {
  float fresult ;
  Circle *arg1 = (Circle *) 0 ;
  double result;
  
  SWIG_check_nonnull(*farg1, "Circle const *", "Circle", "Circle::perimeter() const", return 0);
  arg1 = static_cast< Circle * >(farg1->ptr);
  {
    try {
      result = (double)((Circle const *)arg1)->perimeter();
    } catch (const std::exception& e) {
      SWIG_exception_impl("Circle::perimeter() const", SWIG_RuntimeError, e.what(), return 0);
    }
  }
  fresult = result;
  return fresult;
}


SWIGEXPORT SwigArrayWrapper swigc_Circle_kind(SwigClassWrapper const *farg1) {
  SwigArrayWrapper fresult ;
  Circle *arg1 = (Circle *) 0 ;
  char *result = 0 ;
  
  SWIG_check_nonnull(*farg1, "Circle const *", "Circle", "Circle::kind() const", return SwigArrayWrapper_uninitialized());
  arg1 = static_cast< Circle * >(farg1->ptr);
  {
    try {
      result = (char *)((Circle const *)arg1)->kind();
    } catch (const std::exception& e) {
      SWIG_exception_impl("Circle::kind() const", SWIG_RuntimeError, e.what(), return SwigArrayWrapper_uninitialized());
    }
  }
  fresult.size = strlen(reinterpret_cast< const char* >(result));
  if (0) {
    fresult.data = malloc(fresult.size);
    memcpy(fresult.data, result, fresult.size);
  } else {
    fresult.data = const_cast< char * >(result);
  }
  return fresult;
}


SWIGEXPORT void swigc_delete_Circle(SwigClassWrapper const *farg1) {
  Circle *arg1 = (Circle *) 0 ;
  
  SWIG_check_mutable_nonnull(*farg1, "Circle *", "Circle", "Circle::~Circle()", return );
  arg1 = static_cast< Circle * >(farg1->ptr);
  {
    try {
      delete arg1;
    } catch (const std::exception& e) {
      SWIG_exception_impl("Circle::~Circle()", SWIG_RuntimeError, e.what(), return );
    }
  }
  
}


SWIGEXPORT void swigc_assignment_Circle(SwigClassWrapper * self, SwigClassWrapper const * other) {
  typedef ::Circle swig_lhs_classtype;
  SWIG_assign(swig_lhs_classtype, self,
    swig_lhs_classtype, const_cast<SwigClassWrapper*>(other),
    0 | swig::IS_DESTR | swig::IS_COPY_CONSTR);
}


SWIGEXPORT SwigClassWrapper swigc_new_Square(float const *farg1) {
  SwigClassWrapper fresult ;
  double arg1 ;
  Square *result = 0 ;
  
  arg1 = *farg1;
  {
    try {
      result = (Square *)new Square(arg1);
    } catch (const std::exception& e) {
      SWIG_exception_impl("Square::Square(double)", SWIG_RuntimeError, e.what(), return SwigClassWrapper_uninitialized());
    }
  }
  fresult.ptr = result;
  fresult.mem = (1 ? SWIG_MOVE : SWIG_REF);
  return fresult;
}


SWIGEXPORT float swigc_Square_area(SwigClassWrapper const *farg1) {
  float fresult ;
  Square *arg1 = (Square *) 0 ;
  double result;
  
  SWIG_check_nonnull(*farg1, "Square const *", "Square", "Square::area() const", return 0);
  arg1 = static_cast< Square * >(farg1->ptr);
  {
    try {
      result = (double)((Square const *)arg1)->area();
    } catch (const std::exception& e) {
      SWIG_exception_impl("Square::area() const", SWIG_RuntimeError, e.what(), return 0);
    }
  }
  fresult = result;
  return fresult;
}


SWIGEXPORT float swigc_Square_perimeter(SwigClassWrapper const *farg1) {
  float fresult ;
  Square *arg1 = (Square *) 0 ;
  double result;
  
  SWIG_check_nonnull(*farg1, "Square const *", "Square", "Square::perimeter() const", return 0);
  arg1 = static_cast< Square * >(farg1->ptr);
  {
    try {
      result = (double)((Square const *)arg1)->perimeter();
    } catch (const std::exception& e) {
      SWIG_exception_impl("Square::perimeter() const", SWIG_RuntimeError, e.what(), return 0);
    }
  }
  fresult = result;
  return fresult;
}


SWIGEXPORT SwigArrayWrapper swigc_Square_kind(SwigClassWrapper const *farg1) {
  SwigArrayWrapper fresult ;
  Square *arg1 = (Square *) 0 ;
  char *result = 0 ;
  
  SWIG_check_nonnull(*farg1, "Square const *", "Square", "Square::kind() const", return SwigArrayWrapper_uninitialized());
  arg1 = static_cast< Square * >(farg1->ptr);
  {
    try {
      result = (char *)((Square const *)arg1)->kind();
    } catch (const std::exception& e) {
      SWIG_exception_impl("Square::kind() const", SWIG_RuntimeError, e.what(), return SwigArrayWrapper_uninitialized());
    }
  }
  fresult.size = strlen(reinterpret_cast< const char* >(result));
  if (0) {
    fresult.data = malloc(fresult.size);
    memcpy(fresult.data, result, fresult.size);
  } else {
    fresult.data = const_cast< char * >(result);
  }
  return fresult;
}


SWIGEXPORT void swigc_delete_Square(SwigClassWrapper const *farg1) {
  Square *arg1 = (Square *) 0 ;
  
  SWIG_check_mutable_nonnull(*farg1, "Square *", "Square", "Square::~Square()", return );
  arg1 = static_cast< Square * >(farg1->ptr);
  {
    try {
      delete arg1;
    } catch (const std::exception& e) {
      SWIG_exception_impl("Square::~Square()", SWIG_RuntimeError, e.what(), return );
    }
  }
  
}


SWIGEXPORT void swigc_assignment_Square(SwigClassWrapper * self, SwigClassWrapper const * other) {
  typedef ::Square swig_lhs_classtype;
  SWIG_assign(swig_lhs_classtype, self,
    swig_lhs_classtype, const_cast<SwigClassWrapper*>(other),
    0 | swig::IS_DESTR | swig::IS_COPY_CONSTR);
}


SWIGEXPORT SwigClassWrapper swigc_new_Sphere(float const *farg1) {
  SwigClassWrapper fresult ;
  double arg1 ;
  Sphere *result = 0 ;
  
  arg1 = *farg1;
  {
    try {
      result = (Sphere *)new Sphere(arg1);
    } catch (const std::exception& e) {
      SWIG_exception_impl("Sphere::Sphere(double)", SWIG_RuntimeError, e.what(), return SwigClassWrapper_uninitialized());
    }
  }
  fresult.ptr = result;
  fresult.mem = (1 ? SWIG_MOVE : SWIG_REF);
  return fresult;
}


SWIGEXPORT float swigc_Sphere_volume(SwigClassWrapper const *farg1) {
  float fresult ;
  Sphere *arg1 = (Sphere *) 0 ;
  double result;
  
  SWIG_check_nonnull(*farg1, "Sphere const *", "Sphere", "Sphere::volume() const", return 0);
  arg1 = static_cast< Sphere * >(farg1->ptr);
  {
    try {
      result = (double)((Sphere const *)arg1)->volume();
    } catch (const std::exception& e) {
      SWIG_exception_impl("Sphere::volume() const", SWIG_RuntimeError, e.what(), return 0);
    }
  }
  fresult = result;
  return fresult;
}


SWIGEXPORT SwigArrayWrapper swigc_Sphere_kind(SwigClassWrapper const *farg1) {
  SwigArrayWrapper fresult ;
  Sphere *arg1 = (Sphere *) 0 ;
  char *result = 0 ;
  
  SWIG_check_nonnull(*farg1, "Sphere const *", "Sphere", "Sphere::kind() const", return SwigArrayWrapper_uninitialized());
  arg1 = static_cast< Sphere * >(farg1->ptr);
  {
    try {
      result = (char *)((Sphere const *)arg1)->kind();
    } catch (const std::exception& e) {
      SWIG_exception_impl("Sphere::kind() const", SWIG_RuntimeError, e.what(), return SwigArrayWrapper_uninitialized());
    }
  }
  fresult.size = strlen(reinterpret_cast< const char* >(result));
  if (0) {
    fresult.data = malloc(fresult.size);
    memcpy(fresult.data, result, fresult.size);
  } else {
    fresult.data = const_cast< char * >(result);
  }
  return fresult;
}


SWIGEXPORT void swigc_delete_Sphere(SwigClassWrapper const *farg1) {
  Sphere *arg1 = (Sphere *) 0 ;
  
  SWIG_check_mutable_nonnull(*farg1, "Sphere *", "Sphere", "Sphere::~Sphere()", return );
  arg1 = static_cast< Sphere * >(farg1->ptr);
  {
    try {
      delete arg1;
    } catch (const std::exception& e) {
      SWIG_exception_impl("Sphere::~Sphere()", SWIG_RuntimeError, e.what(), return );
    }
  }
  
}


SWIGEXPORT void swigc_assignment_Sphere(SwigClassWrapper * self, SwigClassWrapper const * other) {
  typedef ::Sphere swig_lhs_classtype;
  SWIG_assign(swig_lhs_classtype, self,
    swig_lhs_classtype, const_cast<SwigClassWrapper*>(other),
    0 | swig::IS_DESTR | swig::IS_COPY_CONSTR);
}


SWIGEXPORT float swigc_surface_to_volume(SwigClassWrapper const *farg1) {
  float fresult ;
  Shape *arg1 = 0 ;
  double result;
  
  SWIG_check_nonnull(*farg1, "Shape const &", "Shape", "surface_to_volume(Shape const &)", return 0);
  arg1 = static_cast< Shape * >(farg1->ptr);
  {
    try {
      result = (double)surface_to_volume((Shape const &)*arg1);
    } catch (const std::exception& e) {
      SWIG_exception_impl("surface_to_volume(Shape const &)", SWIG_RuntimeError, e.what(), return 0);
    }
  }
  fresult = result;
  return fresult;
}


#ifdef __cplusplus
}
#endif

