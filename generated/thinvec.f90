! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module thinvec
 use, intrinsic :: ISO_C_BINDING
 implicit none
 private

 ! PUBLIC METHODS AND TYPES

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

 public :: print_offbyone
 public :: ThinVecDbl

type, bind(C) :: SwigArrayWrapper
  type(C_PTR), public :: data = C_NULL_PTR
  integer(C_SIZE_T), public :: size = 0
end type

 public :: ThinVecInt
 public :: create_ThinVecDbl
 interface create_ThinVecDbl
  module procedure new_ThinVecDbl__SWIG_0, new_ThinVecDbl__SWIG_1, new_ThinVecDbl__SWIG_2
 end interface
 public :: create_ThinVecInt
 interface create_ThinVecInt
  module procedure new_ThinVecInt__SWIG_0, new_ThinVecInt__SWIG_1, new_ThinVecInt__SWIG_2
 end interface
 public :: print_vec
 interface print_vec
  module procedure print_vec__SWIG_1, print_vec__SWIG_2
 end interface

 ! TYPES
 type :: ThinVecDbl
  ! These should be treated as PROTECTED data
  type(SwigClassWrapper), public :: swigdata
 contains
  procedure :: empty => swigf_ThinVecDbl_empty
  procedure :: size => swigf_ThinVecDbl_size
  procedure :: get => swigf_ThinVecDbl_get
  procedure :: set => swigf_ThinVecDbl_set
  procedure :: resize_fill => swigf_ThinVecDbl_resize_fill
  procedure :: resize => swigf_ThinVecDbl_resize
  procedure :: assign => swigf_ThinVecDbl_assign
  procedure :: view => swigf_ThinVecDbl_view
  procedure :: release => delete_ThinVecDbl
  procedure, private :: swigf_assignment_ThinVecDbl
  generic :: assignment(=) => swigf_assignment_ThinVecDbl
 end type
 type :: ThinVecInt
  ! These should be treated as PROTECTED data
  type(SwigClassWrapper), public :: swigdata
 contains
  procedure :: empty => swigf_ThinVecInt_empty
  procedure :: size => swigf_ThinVecInt_size
  procedure :: get => swigf_ThinVecInt_get
  procedure :: set => swigf_ThinVecInt_set
  procedure :: resize_fill => swigf_ThinVecInt_resize_fill
  procedure :: resize => swigf_ThinVecInt_resize
  procedure :: assign => swigf_ThinVecInt_assign
  procedure :: view => swigf_ThinVecInt_view
  procedure :: release => delete_ThinVecInt
  procedure, private :: swigf_assignment_ThinVecInt
  generic :: assignment(=) => swigf_assignment_ThinVecInt
 end type


 ! WRAPPER DECLARATIONS
 interface
subroutine swigc_print_offbyone(farg1) &
bind(C, name="swigc_print_offbyone")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
end subroutine

function swigc_new_ThinVecDbl__SWIG_0() &
bind(C, name="swigc_new_ThinVecDbl__SWIG_0") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: fresult
end function

function swigc_new_ThinVecDbl__SWIG_1(farg1, farg2) &
bind(C, name="swigc_new_ThinVecDbl__SWIG_1") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
integer(C_INT), intent(in) :: farg1
real(C_DOUBLE), intent(in) :: farg2
type(SwigClassWrapper) :: fresult
end function

function swigc_new_ThinVecDbl__SWIG_2(farg1) &
bind(C, name="swigc_new_ThinVecDbl__SWIG_2") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
integer(C_INT), intent(in) :: farg1
type(SwigClassWrapper) :: fresult
end function

function swigc_ThinVecDbl_empty(farg1) &
bind(C, name="swigc_ThinVecDbl_empty") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
integer(C_INT) :: fresult
end function

function swigc_ThinVecDbl_size(farg1) &
bind(C, name="swigc_ThinVecDbl_size") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
integer(C_INT) :: fresult
end function

function swigc_ThinVecDbl_get(farg1, farg2) &
bind(C, name="swigc_ThinVecDbl_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
real(C_DOUBLE) :: fresult
end function

subroutine swigc_ThinVecDbl_set(farg1, farg2, farg3) &
bind(C, name="swigc_ThinVecDbl_set")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
real(C_DOUBLE), intent(in) :: farg3
end subroutine

subroutine swigc_ThinVecDbl_resize_fill(farg1, farg2, farg3) &
bind(C, name="swigc_ThinVecDbl_resize_fill")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
real(C_DOUBLE), intent(in) :: farg3
end subroutine

subroutine swigc_ThinVecDbl_resize(farg1, farg2) &
bind(C, name="swigc_ThinVecDbl_resize")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
end subroutine

subroutine swigc_ThinVecDbl_assign(farg1, farg2) &
bind(C, name="swigc_ThinVecDbl_assign")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
import :: SwigArrayWrapper
type(SwigClassWrapper) :: farg1
type(SwigArrayWrapper) :: farg2
end subroutine

function swigc_ThinVecDbl_view(farg1) &
bind(C, name="swigc_ThinVecDbl_view") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigArrayWrapper
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
type(SwigArrayWrapper) :: fresult
end function

subroutine swigc_delete_ThinVecDbl(farg1) &
bind(C, name="swigc_delete_ThinVecDbl")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
end subroutine

  subroutine swigc_assignment_ThinVecDbl(self, other) &
     bind(C, name="swigc_assignment_ThinVecDbl")
   use, intrinsic :: ISO_C_BINDING
   import :: SwigClassWrapper
   type(SwigClassWrapper), intent(inout) :: self
   type(SwigClassWrapper), intent(in) :: other
  end subroutine
function swigc_new_ThinVecInt__SWIG_0() &
bind(C, name="swigc_new_ThinVecInt__SWIG_0") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: fresult
end function

function swigc_new_ThinVecInt__SWIG_1(farg1, farg2) &
bind(C, name="swigc_new_ThinVecInt__SWIG_1") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
integer(C_INT), intent(in) :: farg1
integer(C_INT), intent(in) :: farg2
type(SwigClassWrapper) :: fresult
end function

function swigc_new_ThinVecInt__SWIG_2(farg1) &
bind(C, name="swigc_new_ThinVecInt__SWIG_2") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
integer(C_INT), intent(in) :: farg1
type(SwigClassWrapper) :: fresult
end function

function swigc_ThinVecInt_empty(farg1) &
bind(C, name="swigc_ThinVecInt_empty") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
integer(C_INT) :: fresult
end function

function swigc_ThinVecInt_size(farg1) &
bind(C, name="swigc_ThinVecInt_size") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
integer(C_INT) :: fresult
end function

function swigc_ThinVecInt_get(farg1, farg2) &
bind(C, name="swigc_ThinVecInt_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
integer(C_INT) :: fresult
end function

subroutine swigc_ThinVecInt_set(farg1, farg2, farg3) &
bind(C, name="swigc_ThinVecInt_set")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
integer(C_INT), intent(in) :: farg3
end subroutine

subroutine swigc_ThinVecInt_resize_fill(farg1, farg2, farg3) &
bind(C, name="swigc_ThinVecInt_resize_fill")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
integer(C_INT), intent(in) :: farg3
end subroutine

subroutine swigc_ThinVecInt_resize(farg1, farg2) &
bind(C, name="swigc_ThinVecInt_resize")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
end subroutine

subroutine swigc_ThinVecInt_assign(farg1, farg2) &
bind(C, name="swigc_ThinVecInt_assign")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
import :: SwigArrayWrapper
type(SwigClassWrapper) :: farg1
type(SwigArrayWrapper) :: farg2
end subroutine

function swigc_ThinVecInt_view(farg1) &
bind(C, name="swigc_ThinVecInt_view") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigArrayWrapper
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
type(SwigArrayWrapper) :: fresult
end function

subroutine swigc_delete_ThinVecInt(farg1) &
bind(C, name="swigc_delete_ThinVecInt")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
end subroutine

  subroutine swigc_assignment_ThinVecInt(self, other) &
     bind(C, name="swigc_assignment_ThinVecInt")
   use, intrinsic :: ISO_C_BINDING
   import :: SwigClassWrapper
   type(SwigClassWrapper), intent(inout) :: self
   type(SwigClassWrapper), intent(in) :: other
  end subroutine
subroutine swigc_print_vec__SWIG_1(farg1) &
bind(C, name="swigc_print_vec__SWIG_1")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
end subroutine

subroutine swigc_print_vec__SWIG_2(farg1) &
bind(C, name="swigc_print_vec__SWIG_2")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
end subroutine

 end interface


contains
 ! FORTRAN PROXY CODE
subroutine print_offbyone(indices)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt), intent(in) :: indices
type(SwigClassWrapper) :: farg1 

farg1 = indices%swigdata
call swigc_print_offbyone(farg1)
end subroutine

function new_ThinVecDbl__SWIG_0() &
result(self)
use, intrinsic :: ISO_C_BINDING
type(ThinVecDbl) :: self
type(SwigClassWrapper) :: fresult 

fresult = swigc_new_ThinVecDbl__SWIG_0()
self%swigdata = fresult
end function

function new_ThinVecDbl__SWIG_1(count, fillval) &
result(self)
use, intrinsic :: ISO_C_BINDING
type(ThinVecDbl) :: self
integer(C_INT), intent(in) :: count
real(C_DOUBLE), intent(in) :: fillval
type(SwigClassWrapper) :: fresult 
integer(C_INT) :: farg1 
real(C_DOUBLE) :: farg2 

farg1 = count
farg2 = fillval
fresult = swigc_new_ThinVecDbl__SWIG_1(farg1, farg2)
self%swigdata = fresult
end function

function new_ThinVecDbl__SWIG_2(count) &
result(self)
use, intrinsic :: ISO_C_BINDING
type(ThinVecDbl) :: self
integer(C_INT), intent(in) :: count
type(SwigClassWrapper) :: fresult 
integer(C_INT) :: farg1 

farg1 = count
fresult = swigc_new_ThinVecDbl__SWIG_2(farg1)
self%swigdata = fresult
end function


function SWIG_int_to_logical(inp) &
    result(out)
  use, intrinsic :: ISO_C_BINDING
  integer(kind=C_INT), intent(IN) :: inp
  logical :: out
  if (inp /= 0) then
    out = .true.
  else
    out = .false.
  end if
end function

function swigf_ThinVecDbl_empty(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
logical :: swig_result
class(ThinVecDbl), intent(in) :: self
integer(C_INT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_ThinVecDbl_empty(farg1)
swig_result = SWIG_int_to_logical(fresult)
end function

function swigf_ThinVecDbl_size(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
class(ThinVecDbl), intent(in) :: self
integer(C_INT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_ThinVecDbl_size(farg1)
swig_result = fresult
end function

function swigf_ThinVecDbl_get(self, index) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swig_result
class(ThinVecDbl), intent(in) :: self
integer(C_INT), intent(in) :: index
real(C_DOUBLE) :: fresult 
type(SwigClassWrapper) :: farg1 
integer(C_INT) :: farg2 

farg1 = self%swigdata
farg2 = index
fresult = swigc_ThinVecDbl_get(farg1, farg2)
swig_result = fresult
end function

subroutine swigf_ThinVecDbl_set(self, index, val)
use, intrinsic :: ISO_C_BINDING
class(ThinVecDbl), intent(inout) :: self
integer(C_INT), intent(in) :: index
real(C_DOUBLE), intent(in) :: val
type(SwigClassWrapper) :: farg1 
integer(C_INT) :: farg2 
real(C_DOUBLE) :: farg3 

farg1 = self%swigdata
farg2 = index
farg3 = val
call swigc_ThinVecDbl_set(farg1, farg2, farg3)
end subroutine

subroutine swigf_ThinVecDbl_resize_fill(self, newsize, fillval)
use, intrinsic :: ISO_C_BINDING
class(ThinVecDbl), intent(inout) :: self
integer(C_INT), intent(in) :: newsize
real(C_DOUBLE), intent(in) :: fillval
type(SwigClassWrapper) :: farg1 
integer(C_INT) :: farg2 
real(C_DOUBLE) :: farg3 

farg1 = self%swigdata
farg2 = newsize
farg3 = fillval
call swigc_ThinVecDbl_resize_fill(farg1, farg2, farg3)
end subroutine

subroutine swigf_ThinVecDbl_resize(self, newsize)
use, intrinsic :: ISO_C_BINDING
class(ThinVecDbl), intent(inout) :: self
integer(C_INT), intent(in) :: newsize
type(SwigClassWrapper) :: farg1 
integer(C_INT) :: farg2 

farg1 = self%swigdata
farg2 = newsize
call swigc_ThinVecDbl_resize(farg1, farg2)
end subroutine

subroutine swigf_ThinVecDbl_assign(self, arr)
use, intrinsic :: ISO_C_BINDING
class(ThinVecDbl), intent(inout) :: self
real(C_DOUBLE), dimension(:), target, intent(inout) :: arr
real(C_DOUBLE), pointer :: farg2_view
type(SwigClassWrapper) :: farg1 
type(SwigArrayWrapper) :: farg2 

farg1 = self%swigdata
farg2_view => arr(1)
farg2%data = c_loc(farg2_view)
farg2%size = size(arr)
call swigc_ThinVecDbl_assign(farg1, farg2)
end subroutine

function swigf_ThinVecDbl_view(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), dimension(:), pointer :: swig_result
class(ThinVecDbl), intent(inout) :: self
type(SwigArrayWrapper) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_ThinVecDbl_view(farg1)

call c_f_pointer(fresult%data, swig_result, [fresult%size])
end function

subroutine delete_ThinVecDbl(self)
use, intrinsic :: ISO_C_BINDING
class(ThinVecDbl), intent(inout) :: self
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
if (self%swigdata%mem == SWIG_OWN) then
call swigc_delete_ThinVecDbl(farg1)
end if
self%swigdata%ptr = C_NULL_PTR
self%swigdata%mem = SWIG_NULL
end subroutine

  subroutine swigf_assignment_ThinVecDbl(self, other)
   use, intrinsic :: ISO_C_BINDING
   class(ThinVecDbl), intent(inout) :: self
   type(ThinVecDbl), intent(in) :: other
   call swigc_assignment_ThinVecDbl(self%swigdata, other%swigdata)
  end subroutine
function new_ThinVecInt__SWIG_0() &
result(self)
use, intrinsic :: ISO_C_BINDING
type(ThinVecInt) :: self
type(SwigClassWrapper) :: fresult 

fresult = swigc_new_ThinVecInt__SWIG_0()
self%swigdata = fresult
end function

function new_ThinVecInt__SWIG_1(count, fillval) &
result(self)
use, intrinsic :: ISO_C_BINDING
type(ThinVecInt) :: self
integer(C_INT), intent(in) :: count
integer(C_INT), intent(in) :: fillval
type(SwigClassWrapper) :: fresult 
integer(C_INT) :: farg1 
integer(C_INT) :: farg2 

farg1 = count
farg2 = fillval
fresult = swigc_new_ThinVecInt__SWIG_1(farg1, farg2)
self%swigdata = fresult
end function

function new_ThinVecInt__SWIG_2(count) &
result(self)
use, intrinsic :: ISO_C_BINDING
type(ThinVecInt) :: self
integer(C_INT), intent(in) :: count
type(SwigClassWrapper) :: fresult 
integer(C_INT) :: farg1 

farg1 = count
fresult = swigc_new_ThinVecInt__SWIG_2(farg1)
self%swigdata = fresult
end function

function swigf_ThinVecInt_empty(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
logical :: swig_result
class(ThinVecInt), intent(in) :: self
integer(C_INT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_ThinVecInt_empty(farg1)
swig_result = SWIG_int_to_logical(fresult)
end function

function swigf_ThinVecInt_size(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
class(ThinVecInt), intent(in) :: self
integer(C_INT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_ThinVecInt_size(farg1)
swig_result = fresult
end function

function swigf_ThinVecInt_get(self, index) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
class(ThinVecInt), intent(in) :: self
integer(C_INT), intent(in) :: index
integer(C_INT) :: fresult 
type(SwigClassWrapper) :: farg1 
integer(C_INT) :: farg2 

farg1 = self%swigdata
farg2 = index
fresult = swigc_ThinVecInt_get(farg1, farg2)
swig_result = fresult
end function

subroutine swigf_ThinVecInt_set(self, index, val)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt), intent(inout) :: self
integer(C_INT), intent(in) :: index
integer(C_INT), intent(in) :: val
type(SwigClassWrapper) :: farg1 
integer(C_INT) :: farg2 
integer(C_INT) :: farg3 

farg1 = self%swigdata
farg2 = index
farg3 = val
call swigc_ThinVecInt_set(farg1, farg2, farg3)
end subroutine

subroutine swigf_ThinVecInt_resize_fill(self, newsize, fillval)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt), intent(inout) :: self
integer(C_INT), intent(in) :: newsize
integer(C_INT), intent(in) :: fillval
type(SwigClassWrapper) :: farg1 
integer(C_INT) :: farg2 
integer(C_INT) :: farg3 

farg1 = self%swigdata
farg2 = newsize
farg3 = fillval
call swigc_ThinVecInt_resize_fill(farg1, farg2, farg3)
end subroutine

subroutine swigf_ThinVecInt_resize(self, newsize)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt), intent(inout) :: self
integer(C_INT), intent(in) :: newsize
type(SwigClassWrapper) :: farg1 
integer(C_INT) :: farg2 

farg1 = self%swigdata
farg2 = newsize
call swigc_ThinVecInt_resize(farg1, farg2)
end subroutine

subroutine swigf_ThinVecInt_assign(self, arr)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt), intent(inout) :: self
integer(C_INT), dimension(:), target, intent(inout) :: arr
integer(C_INT), pointer :: farg2_view
type(SwigClassWrapper) :: farg1 
type(SwigArrayWrapper) :: farg2 

farg1 = self%swigdata
farg2_view => arr(1)
farg2%data = c_loc(farg2_view)
farg2%size = size(arr)
call swigc_ThinVecInt_assign(farg1, farg2)
end subroutine

function swigf_ThinVecInt_view(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), dimension(:), pointer :: swig_result
class(ThinVecInt), intent(inout) :: self
type(SwigArrayWrapper) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_ThinVecInt_view(farg1)

call c_f_pointer(fresult%data, swig_result, [fresult%size])
end function

subroutine delete_ThinVecInt(self)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt), intent(inout) :: self
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
if (self%swigdata%mem == SWIG_OWN) then
call swigc_delete_ThinVecInt(farg1)
end if
self%swigdata%ptr = C_NULL_PTR
self%swigdata%mem = SWIG_NULL
end subroutine

  subroutine swigf_assignment_ThinVecInt(self, other)
   use, intrinsic :: ISO_C_BINDING
   class(ThinVecInt), intent(inout) :: self
   type(ThinVecInt), intent(in) :: other
   call swigc_assignment_ThinVecInt(self%swigdata, other%swigdata)
  end subroutine
subroutine print_vec__SWIG_1(v)
use, intrinsic :: ISO_C_BINDING
class(ThinVecDbl), intent(in) :: v
type(SwigClassWrapper) :: farg1 

farg1 = v%swigdata
call swigc_print_vec__SWIG_1(farg1)
end subroutine

subroutine print_vec__SWIG_2(v)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt), intent(in) :: v
type(SwigClassWrapper) :: farg1 

farg1 = v%swigdata
call swigc_print_vec__SWIG_2(farg1)
end subroutine


end module
