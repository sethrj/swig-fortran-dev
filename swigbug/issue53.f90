! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module issue53
 use, intrinsic :: ISO_C_BINDING
 implicit none
 private

 ! PUBLIC METHODS AND TYPES
 public :: NO

 enum, bind(c)
  enumerator :: SwigMemState = -1
  enumerator :: SWIG_NULL = 0
  enumerator :: SWIG_OWN
  enumerator :: SWIG_MOVE
  enumerator :: SWIG_REF
  enumerator :: SWIG_CREF
 end enum


type, bind(C) :: SwigClassWrapper
  type(C_PTR), public :: ptr = C_NULL_PTR
  integer(C_INT), public :: mem = SWIG_NULL
end type

 public :: NO_classic
 public :: At

 ! PARAMETERS
 enum, bind(c)
  enumerator :: NO_classic = 1
 end enum

 ! TYPES
 type :: NO
  ! These should be treated as PROTECTED data
  type(SwigClassWrapper), public :: swigdata
 contains
  procedure :: release => delete_NO
  procedure, private :: swigf_assignment_NO
  generic :: assignment(=) => swigf_assignment_NO
 end type NO
 interface NO
  procedure new_NO
 end interface
 type :: At
  ! These should be treated as PROTECTED data
  type(SwigClassWrapper), public :: swigdata
 contains
  procedure :: g => swigf_At_g
  procedure :: f => swigf_At_f
  procedure :: gs => swigf_At_gs
  procedure :: fs => swigf_At_fs
  procedure :: release => delete_At
  procedure, private :: swigf_assignment_At
  generic :: assignment(=) => swigf_assignment_At
 end type At
 interface At
  procedure new_At
 end interface


 ! WRAPPER DECLARATIONS
 interface
function swigc_new_NO() &
bind(C, name="swigc_new_NO") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: fresult
end function

subroutine swigc_delete_NO(farg1) &
bind(C, name="swigc_delete_NO")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
end subroutine

  subroutine swigc_assignment_NO(self, other) &
     bind(C, name="swigc_assignment_NO")
   use, intrinsic :: ISO_C_BINDING
   import :: SwigClassWrapper
   type(SwigClassWrapper), intent(inout) :: self
   type(SwigClassWrapper), intent(in) :: other
  end subroutine
function swigc_At_g(farg1, farg2) &
bind(C, name="swigc_At_g") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
type(SwigClassWrapper) :: farg2
integer(C_INT) :: fresult
end function

function swigc_At_f(farg1, farg2) &
bind(C, name="swigc_At_f") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
type(SwigClassWrapper) :: farg2
integer(C_INT) :: fresult
end function

function swigc_At_gs(farg1, farg2) &
bind(C, name="swigc_At_gs") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
type(SwigClassWrapper) :: farg2
integer(C_INT) :: fresult
end function

function swigc_At_fs(farg1, farg2) &
bind(C, name="swigc_At_fs") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
type(SwigClassWrapper) :: farg2
integer(C_INT) :: fresult
end function

function swigc_new_At() &
bind(C, name="swigc_new_At") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: fresult
end function

subroutine swigc_delete_At(farg1) &
bind(C, name="swigc_delete_At")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
end subroutine

  subroutine swigc_assignment_At(self, other) &
     bind(C, name="swigc_assignment_At")
   use, intrinsic :: ISO_C_BINDING
   import :: SwigClassWrapper
   type(SwigClassWrapper), intent(inout) :: self
   type(SwigClassWrapper), intent(in) :: other
  end subroutine
 end interface


contains
 ! FORTRAN PROXY CODE
function new_NO() &
result(self)
use, intrinsic :: ISO_C_BINDING
type(NO) :: self
type(SwigClassWrapper) :: fresult 

fresult = swigc_new_NO()
self%swigdata = fresult
end function

subroutine delete_NO(self)
use, intrinsic :: ISO_C_BINDING
class(NO), intent(inout) :: self
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
if (self%swigdata%mem == SWIG_OWN) then
call swigc_delete_NO(farg1)
end if
self%swigdata%ptr = C_NULL_PTR
self%swigdata%mem = SWIG_NULL
end subroutine

  subroutine swigf_assignment_NO(self, other)
   use, intrinsic :: ISO_C_BINDING
   class(NO), intent(inout) :: self
   type(NO), intent(in) :: other
   call swigc_assignment_NO(self%swigdata, other%swigdata)
  end subroutine
function swigf_At_g(self, b) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
class(At), intent(inout) :: self
class(At), intent(in) :: b
integer(C_INT) :: fresult 
type(SwigClassWrapper) :: farg1 
type(SwigClassWrapper) :: farg2 

farg1 = self%swigdata
farg2 = b%swigdata
fresult = swigc_At_g(farg1, farg2)
swig_result = fresult
end function

function swigf_At_f(self, b) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
class(At), intent(inout) :: self
class(At), intent(in) :: b
integer(C_INT) :: fresult 
type(SwigClassWrapper) :: farg1 
type(SwigClassWrapper) :: farg2 

farg1 = self%swigdata
farg2 = b%swigdata
fresult = swigc_At_f(farg1, farg2)
swig_result = fresult
end function

function swigf_At_gs(self, bsp) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
class(At), intent(inout) :: self
type(At) :: bsp
integer(C_INT) :: fresult 
type(SwigClassWrapper) :: farg1 
type(SwigClassWrapper) :: farg2 

farg1 = self%swigdata
farg2 = bsp%swigdata
fresult = swigc_At_gs(farg1, farg2)
swig_result = fresult
end function

function swigf_At_fs(self, bsp) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
class(At), intent(inout) :: self
type(At) :: bsp
integer(C_INT) :: fresult 
type(SwigClassWrapper) :: farg1 
type(SwigClassWrapper) :: farg2 

farg1 = self%swigdata
farg2 = bsp%swigdata
fresult = swigc_At_fs(farg1, farg2)
swig_result = fresult
end function

function new_At() &
result(self)
use, intrinsic :: ISO_C_BINDING
type(At) :: self
type(SwigClassWrapper) :: fresult 

fresult = swigc_new_At()
self%swigdata = fresult
end function

subroutine delete_At(self)
use, intrinsic :: ISO_C_BINDING
class(At), intent(inout) :: self
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
if (self%swigdata%mem == SWIG_OWN) then
call swigc_delete_At(farg1)
end if
self%swigdata%ptr = C_NULL_PTR
self%swigdata%mem = SWIG_NULL
end subroutine

  subroutine swigf_assignment_At(self, other)
   use, intrinsic :: ISO_C_BINDING
   class(At), intent(inout) :: self
   type(At), intent(in) :: other
   call swigc_assignment_At(self%swigdata, other%swigdata)
  end subroutine

end module
