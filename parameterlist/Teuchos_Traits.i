//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   parameterlist/Teuchos_Traits.i
 * \author William F. Spotz and Seth R Johnson
 * \date   Tue Dec 06 17:59:15 2016
 */
//---------------------------------------------------------------------------//
%{
#include "Teuchos_ScalarTraitsDecl.hpp"
#include "Teuchos_SerializationTraits.hpp"

// Specializations of Teuchos::SerializationTraits<>:
//     unsigned char, short, unsigned short, unsigned int, long,
//     long long, unsigned long long
namespace Teuchos
{
#ifdef TEUCHOS_SERIALIZATIONTRAITS_UNSIGNED_CHAR
template<typename Ordinal>
class SerializationTraits<Ordinal,unsigned char>
  : public DirectSerializationTraits<Ordinal,unsigned char>
{};
#endif
#ifdef TEUCHOS_SERIALIZATIONTRAITS_UNSIGNED_SHORT
template<typename Ordinal>
class SerializationTraits<Ordinal,unsigned short>
  : public DirectSerializationTraits<Ordinal,unsigned short>
{};
#endif
#ifdef TEUCHOS_SERIALIZATIONTRAITS_UNSIGNED_INT
template<typename Ordinal>
class SerializationTraits<Ordinal,unsigned int>
  : public DirectSerializationTraits<Ordinal,unsigned int>
{};
#endif
#ifdef TEUCHOS_SERIALIZATIONTRAITS_UNSIGNED_LONG
template<typename Ordinal>
class SerializationTraits<Ordinal,unsigned long>
  : public DirectSerializationTraits<Ordinal,unsigned long>
{};
#endif
#if defined(TEUCHOS_SERIALIZATIONTRAITS_LONG_LONG) || !defined(HAVE_TEUCHOS_LONG_LONG_INT)
template<typename Ordinal>
class SerializationTraits<Ordinal,long long>
  : public DirectSerializationTraits<Ordinal,long long>
{};
#endif
#if defined(TEUCHOS_SERIALIZATIONTRAITS_UNSIGNED_LONG_LONG) || !defined(HAVE_TEUCHOS_LONG_LONG_INT)
template<typename Ordinal>
class SerializationTraits<Ordinal,unsigned long long>
  : public DirectSerializationTraits<Ordinal,unsigned long long>
{};
#endif
}
%}

%import "Teuchos_TypeNameTraits.hpp"
%import "Teuchos_NullIteratorTraits.hpp"
%import "Teuchos_ConstTypeTraits.hpp"

#if 0
///////////////////////////////////
// Teuchos::ScalarTraits support //
///////////////////////////////////
%include "Teuchos_ScalarTraitsDecl.hpp"

// Specialization of ScalarTraits<> for type long
%inline
%{
namespace Teuchos
{
// Type unsigned char
template<>
struct ScalarTraits<unsigned char>
{
  typedef unsigned char magnitudeType;
  static const bool isComplex = false;
  static const bool isComparable = true;
  static const bool hasMachineParameters = false;
  static inline magnitudeType magnitude(unsigned char a)
  { return static_cast<unsigned char>(std::fabs(static_cast<double>(a))); }
  static inline unsigned char zero()  { return 0; }
  static inline unsigned char one()   { return 1; }
  static inline unsigned char conjugate(unsigned char x) { return x; }
  static inline unsigned char real(unsigned char x) { return x; }
  static inline unsigned char imag(unsigned char x) { return 0; }
  static inline void seedrandom(unsigned int s) { std::srand(s);
#ifdef __APPLE__
    random(); // throw away first random number to address bug 3655
#endif
  }
  static inline unsigned char random() { return std::rand(); }
  static inline std::string name() { return "unsigned char"; }
  static inline unsigned char squareroot(unsigned char x)
  { return (unsigned char) std::sqrt((double) x); }
  static inline unsigned char pow(unsigned char x, unsigned char y)
  { return (unsigned char) std::pow((double)x,(double)y); }
};

// SNIP: Type unsigned short (now defined in Teuchos_ScalarTraits.hpp)
// Type unsigned int
#ifdef TEUCHOS_SCALARTRAITS_UNSIGNED_INT
template<>
struct ScalarTraits<unsigned int>
{
  typedef unsigned int magnitudeType;
  static const bool isComplex = false;
  static const bool isComparable = true;
  static const bool hasMachineParameters = false;
  static inline magnitudeType magnitude(unsigned int a)
  { return static_cast<unsigned int>(std::fabs(static_cast<double>(a))); }
  static inline unsigned int zero()  { return 0; }
  static inline unsigned int one()   { return 1; }
  static inline unsigned int conjugate(unsigned int x) { return x; }
  static inline unsigned int real(unsigned int x) { return x; }
  static inline unsigned int imag(unsigned int x) { return 0; }
  static inline void seedrandom(unsigned int s) { std::srand(s);
#ifdef __APPLE__
    random(); // throw away first random number to address bug 3655
#endif
  }
  static inline unsigned int random() { return std::rand(); }
  static inline std::string name() { return "unsigned int"; }
  static inline unsigned int squareroot(unsigned int x)
  { return (unsigned int) std::sqrt((double) x); }
  static inline unsigned int pow(unsigned int x, unsigned int y)
  { return (unsigned int) std::pow((double)x,(double)y); }
};
#endif

// Type unsigned long, already taken care of in Teuchos_ScalarTraits.hpp
#ifdef TEUCHOS_SCALARTRAITS_UNSIGNED_LONG
template<>
struct ScalarTraits<unsigned long>
{
  typedef unsigned long magnitudeType;
  static const bool isComplex = false;
  static const bool isComparable = true;
  static const bool hasMachineParameters = false;
  static inline magnitudeType magnitude(unsigned long a)
  { return static_cast<unsigned long>(std::fabs(static_cast<double>(a))); }
  static inline unsigned long zero()  { return 0; }
  static inline unsigned long one()   { return 1; }
  static inline unsigned long conjugate(unsigned long x) { return x; }
  static inline unsigned long real(unsigned long x) { return x; }
  static inline unsigned long imag(unsigned long x) { return 0; }
  static inline void seedrandom(unsigned int s) { std::srand(s);
#ifdef __APPLE__
    random(); // throw away first random number to address bug 3655
#endif
  }
  static inline unsigned long random() { return std::rand(); }
  static inline std::string name() { return "unsigned long"; }
  static inline unsigned long squareroot(unsigned long x)
  { return (unsigned long) std::sqrt((double) x); }
  static inline unsigned long pow(unsigned long x, unsigned long y)
  { return (unsigned long) std::pow((double)x,(double)y); }
};
#endif

#if defined(TEUCHOS_SCALARTRAITS_LONG_LONG) || !defined(HAVE_TEUCHOS_LONG_LONG_INT)
// Type long long
template<>
struct ScalarTraits<long long>
{
  typedef long long magnitudeType;
  static const bool isComplex = false;
  static const bool isComparable = true;
  static const bool hasMachineParameters = false;
  static inline magnitudeType magnitude(long long a)
  { return static_cast<long long>(std::fabs(static_cast<double>(a))); }
  static inline long long zero()  { return 0; }
  static inline long long one()   { return 1; }
  static inline long long conjugate(long long x) { return x; }
  static inline long long real(long long x) { return x; }
  static inline long long imag(long long x) { return 0; }
  static inline void seedrandom(unsigned int s) { std::srand(s);
#ifdef __APPLE__
    random(); // throw away first random number to address bug 3655
#endif
  }
  static inline long long random() { return (-1 + 2*rand()); }
  static inline std::string name() { return "long long"; }
  static inline long long squareroot(long long x)
  { return (long long) std::sqrt((double) x); }
  static inline long long pow(long long x, long long y)
  { return (long long) std::pow((double)x,(double)y); }
};
#endif

#if defined(TEUCHOS_SCALARTRAITS_UNSIGNED_LONG_LONG) || !defined(HAVE_TEUCHOS_LONG_LONG_INT)
// Type unsigned long long
template<>
struct ScalarTraits<unsigned long long>
{
  typedef unsigned long long magnitudeType;
  static const bool isComplex = false;
  static const bool isComparable = true;
  static const bool hasMachineParameters = false;
  static inline magnitudeType magnitude(unsigned long long a)
  { return static_cast<unsigned long long>(std::fabs(static_cast<double>(a))); }
  static inline unsigned long long zero()  { return 0; }
  static inline unsigned long long one()   { return 1; }
  static inline unsigned long long conjugate(unsigned long long x) { return x; }
  static inline unsigned long long real(unsigned long long x) { return x; }
  static inline unsigned long long imag(unsigned long long x) { return 0; }
  static inline void seedrandom(unsigned int s) { std::srand(s);
#ifdef __APPLE__
    random(); // throw away first random number to address bug 3655
#endif
  }
  static inline unsigned long long random() { return std::rand(); }
  static inline std::string name() { return "unsigned long long"; }
  static inline unsigned long long squareroot(unsigned long long x)
  { return (unsigned long long) std::sqrt((double) x); }
  static inline unsigned long long pow(unsigned long long x, unsigned long long y)
  { return (unsigned long long) std::pow((double)x,(double)y); }
};
#endif

}
%}

%ignore Teuchos::ScalarTraits< char >::eps  ;
%ignore Teuchos::ScalarTraits< char >::sfmin;
%ignore Teuchos::ScalarTraits< char >::base ;
%ignore Teuchos::ScalarTraits< char >::prec ;
%ignore Teuchos::ScalarTraits< char >::t    ;
%ignore Teuchos::ScalarTraits< char >::rnd  ;
%ignore Teuchos::ScalarTraits< char >::emin ;
%ignore Teuchos::ScalarTraits< char >::rmin ;
%ignore Teuchos::ScalarTraits< char >::emax ;
%ignore Teuchos::ScalarTraits< char >::rmax ;
%ignore Teuchos::ScalarTraits< char >::nan  ;
%template(ScalarTraitsByte) Teuchos::ScalarTraits< char >;

%template(ScalarTraitsUbyte) Teuchos::ScalarTraits< unsigned char >;

%ignore Teuchos::ScalarTraits< short >::eps     ;
%ignore Teuchos::ScalarTraits< short >::sfmin   ;
%ignore Teuchos::ScalarTraits< short >::base    ;
%ignore Teuchos::ScalarTraits< short >::prec    ;
%ignore Teuchos::ScalarTraits< short >::t       ;
%ignore Teuchos::ScalarTraits< short >::rnd     ;
%ignore Teuchos::ScalarTraits< short >::emin    ;
%ignore Teuchos::ScalarTraits< short >::rmin    ;
%ignore Teuchos::ScalarTraits< short >::emax    ;
%ignore Teuchos::ScalarTraits< short >::rmax    ;
%ignore Teuchos::ScalarTraits< short >::nan     ;
%ignore Teuchos::ScalarTraits< short >::isnaninf;
%template(ScalarTraitsShort) Teuchos::ScalarTraits< short >;

%ignore Teuchos::ScalarTraits< unsigned short >::eps     ;
%ignore Teuchos::ScalarTraits< unsigned short >::sfmin   ;
%ignore Teuchos::ScalarTraits< unsigned short >::base    ;
%ignore Teuchos::ScalarTraits< unsigned short >::prec    ;
%ignore Teuchos::ScalarTraits< unsigned short >::t       ;
%ignore Teuchos::ScalarTraits< unsigned short >::rnd     ;
%ignore Teuchos::ScalarTraits< unsigned short >::emin    ;
%ignore Teuchos::ScalarTraits< unsigned short >::rmin    ;
%ignore Teuchos::ScalarTraits< unsigned short >::emax    ;
%ignore Teuchos::ScalarTraits< unsigned short >::rmax    ;
%ignore Teuchos::ScalarTraits< unsigned short >::nan     ;
%ignore Teuchos::ScalarTraits< unsigned short >::isnaninf;
%template(ScalarTraitsUshort) Teuchos::ScalarTraits< unsigned short >;

%ignore Teuchos::ScalarTraits< int >::eps  ;
%ignore Teuchos::ScalarTraits< int >::sfmin;
%ignore Teuchos::ScalarTraits< int >::base ;
%ignore Teuchos::ScalarTraits< int >::prec ;
%ignore Teuchos::ScalarTraits< int >::t    ;
%ignore Teuchos::ScalarTraits< int >::rnd  ;
%ignore Teuchos::ScalarTraits< int >::emin ;
%ignore Teuchos::ScalarTraits< int >::rmin ;
%ignore Teuchos::ScalarTraits< int >::emax ;
%ignore Teuchos::ScalarTraits< int >::rmax ;
%ignore Teuchos::ScalarTraits< int >::nan  ;
%template(ScalarTraitsInt) Teuchos::ScalarTraits< int >;

%ignore Teuchos::ScalarTraits< unsigned int >::eps     ;
%ignore Teuchos::ScalarTraits< unsigned int >::sfmin   ;
%ignore Teuchos::ScalarTraits< unsigned int >::base    ;
%ignore Teuchos::ScalarTraits< unsigned int >::prec    ;
%ignore Teuchos::ScalarTraits< unsigned int >::t       ;
%ignore Teuchos::ScalarTraits< unsigned int >::rnd     ;
%ignore Teuchos::ScalarTraits< unsigned int >::emin    ;
%ignore Teuchos::ScalarTraits< unsigned int >::rmin    ;
%ignore Teuchos::ScalarTraits< unsigned int >::emax    ;
%ignore Teuchos::ScalarTraits< unsigned int >::rmax    ;
%ignore Teuchos::ScalarTraits< unsigned int >::nan     ;
%ignore Teuchos::ScalarTraits< unsigned int >::isnaninf;
%template(ScalarTraitsUint) Teuchos::ScalarTraits< unsigned int >;

%ignore Teuchos::ScalarTraits< long >::eps     ;
%ignore Teuchos::ScalarTraits< long >::sfmin   ;
%ignore Teuchos::ScalarTraits< long >::base    ;
%ignore Teuchos::ScalarTraits< long >::prec    ;
%ignore Teuchos::ScalarTraits< long >::t       ;
%ignore Teuchos::ScalarTraits< long >::rnd     ;
%ignore Teuchos::ScalarTraits< long >::emin    ;
%ignore Teuchos::ScalarTraits< long >::rmin    ;
%ignore Teuchos::ScalarTraits< long >::emax    ;
%ignore Teuchos::ScalarTraits< long >::rmax    ;
%ignore Teuchos::ScalarTraits< long >::nan     ;
%ignore Teuchos::ScalarTraits< long >::isnaninf;
%template(ScalarTraitsLong) Teuchos::ScalarTraits< long >;

%ignore Teuchos::ScalarTraits< unsigned long >::eps     ;
%ignore Teuchos::ScalarTraits< unsigned long >::sfmin   ;
%ignore Teuchos::ScalarTraits< unsigned long >::base    ;
%ignore Teuchos::ScalarTraits< unsigned long >::prec    ;
%ignore Teuchos::ScalarTraits< unsigned long >::t       ;
%ignore Teuchos::ScalarTraits< unsigned long >::rnd     ;
%ignore Teuchos::ScalarTraits< unsigned long >::emin    ;
%ignore Teuchos::ScalarTraits< unsigned long >::rmin    ;
%ignore Teuchos::ScalarTraits< unsigned long >::emax    ;
%ignore Teuchos::ScalarTraits< unsigned long >::rmax    ;
%ignore Teuchos::ScalarTraits< unsigned long >::nan     ;
%ignore Teuchos::ScalarTraits< unsigned long >::isnaninf;
%template(ScalarTraitsUlong) Teuchos::ScalarTraits< unsigned long >;

%ignore Teuchos::ScalarTraits< long long >::eps     ;
%ignore Teuchos::ScalarTraits< long long >::sfmin   ;
%ignore Teuchos::ScalarTraits< long long >::base    ;
%ignore Teuchos::ScalarTraits< long long >::prec    ;
%ignore Teuchos::ScalarTraits< long long >::t       ;
%ignore Teuchos::ScalarTraits< long long >::rnd     ;
%ignore Teuchos::ScalarTraits< long long >::emin    ;
%ignore Teuchos::ScalarTraits< long long >::rmin    ;
%ignore Teuchos::ScalarTraits< long long >::emax    ;
%ignore Teuchos::ScalarTraits< long long >::rmax    ;
%ignore Teuchos::ScalarTraits< long long >::nan     ;
%ignore Teuchos::ScalarTraits< long long >::isnaninf;

%template(ScalarTraitsLongLong) Teuchos::ScalarTraits< long long >;

%ignore Teuchos::ScalarTraits< unsigned long long >::eps     ;
%ignore Teuchos::ScalarTraits< unsigned long long >::sfmin   ;
%ignore Teuchos::ScalarTraits< unsigned long long >::base    ;
%ignore Teuchos::ScalarTraits< unsigned long long >::prec    ;
%ignore Teuchos::ScalarTraits< unsigned long long >::t       ;
%ignore Teuchos::ScalarTraits< unsigned long long >::rnd     ;
%ignore Teuchos::ScalarTraits< unsigned long long >::emin    ;
%ignore Teuchos::ScalarTraits< unsigned long long >::rmin    ;
%ignore Teuchos::ScalarTraits< unsigned long long >::emax    ;
%ignore Teuchos::ScalarTraits< unsigned long long >::rmax    ;
%ignore Teuchos::ScalarTraits< unsigned long long >::nan     ;
%ignore Teuchos::ScalarTraits< unsigned long long >::isnaninf;

%template(ScalarTraitsUlongLong) Teuchos::ScalarTraits< unsigned long long >;

%template(ScalarTraitsInt) Teuchos::ScalarTraits< float >;
%template(ScalarTraitsFloat) Teuchos::ScalarTraits< float >;
%template(ScalarTraitsDouble) Teuchos::ScalarTraits< double >;

// SNIP python code

//////////////////////////////////////////
// Teuchos::SerializationTraits support //
//////////////////////////////////////////
%define
%teuchos_serialtraits_for_type(type,Type)
%ignore Teuchos::DirectSerializationTraits<long,type>::convertToCharPtr(const type*);
%ignore Teuchos::DirectSerializationTraits<long,type>::convertToCharPtr(const char*);
%ignore Teuchos::DirectSerializationTraits<long,type>::convertFromCharPtr(const char*);
%template(DirectSerializationTraits ## Type)
    Teuchos::DirectSerializationTraits<long, type>;
%ignore Teuchos::SerializationTraits<long,type>::convertToCharPtr(const type*);
%ignore Teuchos::SerializationTraits<long,type>::convertToCharPtr(const char*);
%ignore Teuchos::SerializationTraits<long,type>::convertFromCharPtr(const char*);
%template(SerializationTraits ## Type) Teuchos::SerializationTraits<long, type>;
%enddef
%include "Teuchos_SerializationTraits.hpp"
%teuchos_serialtraits_for_type(char              , Byte     )
%teuchos_serialtraits_for_type(unsigned char     , Ubyte    )
%teuchos_serialtraits_for_type(short             , Short    )
%teuchos_serialtraits_for_type(unsigned short    , Ushort   )
%teuchos_serialtraits_for_type(int               , Int      )
%teuchos_serialtraits_for_type(unsigned int      , Uint     )
%teuchos_serialtraits_for_type(long              , Long     )
%teuchos_serialtraits_for_type(unsigned long     , Ulong    )
%teuchos_serialtraits_for_type(long long         , LongLong )
%teuchos_serialtraits_for_type(unsigned long long, UlongLong)
%teuchos_serialtraits_for_type(float             , Float    )
%teuchos_serialtraits_for_type(double            , Double   )


// SNIP: python code
#endif

//---------------------------------------------------------------------------//
// end of parameterlist/Teuchos_Traits.i
//---------------------------------------------------------------------------//
