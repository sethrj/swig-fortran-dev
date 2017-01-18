//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   parameterlist/teuchos.i
 * \author Seth R Johnson
 * \date   Tue Dec 06 17:54:39 2016
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//

%module teuchos

#if 0
//---------------------------------------------------------------------------//
// CONFIGURATION
//---------------------------------------------------------------------------//
%{
//#include "PyTrilinos_config.h"

#ifdef HAVE_INTTYPES_H
#undef HAVE_INTTYPES_H
#endif
#ifdef HAVE_STDINT_H
#undef HAVE_STDINT_H
#endif
#include "Teuchos_ConfigDefs.hpp"
#include "Teuchos_DLLExportMacro.h"
#include "Teuchos_iostream_helpers.hpp"

// Teuchos includes
#include "Teuchos_Version.hpp"
#include "Teuchos_NullIteratorTraits.hpp"
#include "Teuchos_RCPDecl.hpp"
#include "Teuchos_ParameterListExceptions.hpp"
#include "Teuchos_Time.hpp"
#include "Teuchos_DataAccess.hpp"

    // SNIP numpy

// Namespace flattening
using std::string;
using Teuchos::RCP;

%}

%include <stdint.i>
namespace std
{
typedef intptr_t ptrdiff_t;
}
using std::ptrdiff_t;

%include "Teuchos_config.h"
%include "Teuchos_ConfigDefs.hpp"
%include "Teuchos_DLLExportMacro.h"
%include "Teuchos_iostream_helpers.hpp"
//%include "PyTrilinos_config.h"

// SNIP: features/doc

//---------------------------------------------------------------------------//
// GLOBAL IGNORES
//---------------------------------------------------------------------------//

%ignore *::begin;
%ignore *::end;
%ignore *::operator=;
%ignore *::operator[];
%ignore *::operator();

//---------------------------------------------------------------------------//
// STL SUPPORT
//---------------------------------------------------------------------------//

// SNIP : using std::string, numpy, doc

%include "std_vector.i"
%include "std_string.i"

%template(VectorDouble) std::vector<double>;

//---------------------------------------------------------------------------//

%include "Teuchos_RCP.i"
%include "Teuchos_Traits.i"
%include "Teuchos_ArrayView.i"
%include "Teuchos_Array.i"
%include "Teuchos_Comm.i"
#endif
%include "Teuchos_ParameterList.i"
// %include "Teuchos_XML.i"

//---------------------------------------------------------------------------//
// end of parameterlist/teuchos.i
//---------------------------------------------------------------------------//
