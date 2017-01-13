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

#if 0
%teuchos_rcp(Teuchos::Describable)
// %include "Teuchos_Describable.hpp"
namespace Teuchos
{
class Describable { };
}

%teuchos_rcp(Teuchos::Comm< int >)

%ignore Teuchos::Comm::broadcast;
%ignore Teuchos::Comm::gatherAll;
%ignore Teuchos::Comm::reduceAll;
%ignore Teuchos::Comm::scan;
%ignore Teuchos::Comm::isend;
%ignore Teuchos::Comm::ireceive;
%ignore Teuchos::Comm::wait;
%ignore Teuchos::Comm::waitAll;
%ignore Teuchos::Comm::readySend;
%ignore Teuchos::broadcast(const Comm&, const int, const ArrayView&);
%ignore Teuchos::wait;
%ignore Teuchos::waitAll;

// These require char[] buffers
%ignore Teuchos::Comm::ssend;
%ignore Teuchos::Comm::receive;
%ignore Teuchos::Comm::gather;

%include "Teuchos_Comm.hpp"
#endif

%teuchos_rcp(Teuchos::Comm)

namespace Teuchos
{
template<typename Ordinal>
class Comm
{
  virtual int getRank() const = 0;
  virtual int getSize() const = 0;
  virtual void barrier() const = 0;
  virtual RCP< Comm > duplicate() const = 0;
};
}

%template(Comm_int) Teuchos::Comm<int>;

//---------------------------------------------------------------------------//
// COMM HELPERS
//---------------------------------------------------------------------------//

%include "Teuchos_CommHelpers.hpp"
%template(rank_int   ) Teuchos::rank<int>;
%template(size_int   ) Teuchos::size<int>;
%template(barrier_int) Teuchos::barrier<int>;

//---------------------------------------------------------------------------//
// SERIAL COMM
//---------------------------------------------------------------------------//

%teuchos_rcp(Teuchos::SerialComm)
%{
#include "Teuchos_DefaultSerialComm.hpp"
%}

namespace Teuchos
{
template<typename Ordinal>
class SerialComm : public Comm<Ordinal>
{
  public:
    SerialComm();
};
}

//%include "Teuchos_DefaultSerialComm.hpp"

%template(SerialComm_int) Teuchos::SerialComm<int>;

//---------------------------------------------------------------------------//
// MPI COMM
//---------------------------------------------------------------------------//

#ifdef HAVE_MPI

%{
#include "mpi.h"
#include "Teuchos_DefaultMpiComm.hpp"
%}
%teuchos_rcp(Teuchos::MpiComm)
%include "Teuchos_DefaultMpiComm.hpp"
%template(MpiComm_int) Teuchos::MpiComm<int>;

#endif // HAVE_MPI

//---------------------------------------------------------------------------//
// end of parameterlist/Teuchos_Comm.i
//---------------------------------------------------------------------------//
