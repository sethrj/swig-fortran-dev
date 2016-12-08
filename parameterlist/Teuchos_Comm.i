//---------------------------------*-SWIG-*----------------------------------//
/*!
 * \file   parameterlist/Teuchos_Comm.i
 * \author Seth R Johnson
 * \date   Tue Dec 06 17:59:15 2016
 * \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
 */
//---------------------------------------------------------------------------//
%{
// Teuchos includes
#include "Teuchos_VerbosityLevel.hpp"
#include "Teuchos_FancyOStream.hpp"
#include "Teuchos_LabeledObject.hpp"
#include "Teuchos_Describable.hpp"
#include "Teuchos_ReductionOp.hpp"
#include "Teuchos_Comm.hpp"
#include "Teuchos_DefaultSerialComm.hpp"
#include "Teuchos_CommHelpers.hpp"
#include "Teuchos_OpaqueWrapper.hpp"
using Teuchos::OpaqueWrapper;
%}

%include "Teuchos_Comm.hh"

//---------------------------------------------------------------------------//
// end of parameterlist/Teuchos_Comm.i
//---------------------------------------------------------------------------//
