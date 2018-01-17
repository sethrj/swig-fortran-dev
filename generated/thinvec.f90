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
  enumerator :: SwigfProxyFlag = -1
  enumerator :: SWIGF_UNINIT = -1
  enumerator :: SWIGF_OWNER = 0
  enumerator :: SWIGF_MOVING = 1
  enumerator :: SWIGF_REFERENCE = 2
  enumerator :: SWIGF_CONST_REFERENCE = 3
 end enum


type, bind(C) :: SwigfClassWrapper
  type(C_PTR), public :: ptr = C_NULL_PTR
  integer(C_INT), public :: flag = SWIGF_UNINIT
end type

 public :: print_offbyone
 public :: ThinVecDbl

type, bind(C) :: SwigfArrayWrapper
  type(C_PTR), public :: data
  integer(C_SIZE_T), public :: size
end type

 public :: ThinVecInt
 public :: print_vec
 interface print_vec
  module procedure print_vec__SWIG_1, print_vec__SWIG_2
 end interface

 ! TYPES
 type :: ThinVecDbl
  ! These should be treated as PROTECTED data
  type(SwigfClassWrapper), public :: swigdata
 contains
  procedure :: create => swigf_new_ThinVecDbl
  procedure :: create_fill => swigf_new_ThinVecDbl_create_fill
  procedure :: create_count => swigf_new_ThinVecDbl_create_count
  procedure :: empty => swigf_ThinVecDbl_empty
  procedure :: size => swigf_ThinVecDbl_size
  procedure :: get => swigf_ThinVecDbl_get
  procedure :: set => swigf_ThinVecDbl_set
  procedure :: resize_fill => swigf_ThinVecDbl_resize_fill
  procedure :: resize => swigf_ThinVecDbl_resize
  procedure :: assign_from => swigf_ThinVecDbl_assign_from
  procedure :: view => swigf_ThinVecDbl_view
  procedure :: release => swigf_delete_ThinVecDbl
 end type
 type :: ThinVecInt
  ! These should be treated as PROTECTED data
  type(SwigfClassWrapper), public :: swigdata
 contains
  procedure :: create => swigf_new_ThinVecInt
  procedure :: create_fill => swigf_new_ThinVecInt_create_fill
  procedure :: create_count => swigf_new_ThinVecInt_create_count
  procedure :: empty => swigf_ThinVecInt_empty
  procedure :: size => swigf_ThinVecInt_size
  procedure :: get => swigf_ThinVecInt_get
  procedure :: set => swigf_ThinVecInt_set
  procedure :: resize_fill => swigf_ThinVecInt_resize_fill
  procedure :: resize => swigf_ThinVecInt_resize
  procedure :: assign_from => swigf_ThinVecInt_assign_from
  procedure :: view => swigf_ThinVecInt_view
  procedure :: release => swigf_delete_ThinVecInt
 end type


 ! WRAPPER DECLARATIONS
 interface
subroutine swigc_print_offbyone(farg1) &
bind(C, name="swigc_print_offbyone")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
end subroutine

function swigc_new_ThinVecDbl() &
bind(C, name="swigc_new_ThinVecDbl") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: fresult
end function

function swigc_new_ThinVecDbl_create_fill(farg1, farg2) &
bind(C, name="swigc_new_ThinVecDbl_create_fill") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
integer(C_INT), intent(in) :: farg1
real(C_DOUBLE), intent(in) :: farg2
type(SwigfClassWrapper) :: fresult
end function

function swigc_new_ThinVecDbl_create_count(farg1) &
bind(C, name="swigc_new_ThinVecDbl_create_count") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
integer(C_INT), intent(in) :: farg1
type(SwigfClassWrapper) :: fresult
end function

function swigc_ThinVecDbl_empty(farg1) &
bind(C, name="swigc_ThinVecDbl_empty") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
logical(C_BOOL) :: fresult
end function

function swigc_ThinVecDbl_size(farg1) &
bind(C, name="swigc_ThinVecDbl_size") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
integer(C_INT) :: fresult
end function

function swigc_ThinVecDbl_get(farg1, farg2) &
bind(C, name="swigc_ThinVecDbl_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
real(C_DOUBLE) :: fresult
end function

subroutine swigc_ThinVecDbl_set(farg1, farg2, farg3) &
bind(C, name="swigc_ThinVecDbl_set")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
real(C_DOUBLE), intent(in) :: farg3
end subroutine

subroutine swigc_ThinVecDbl_resize_fill(farg1, farg2, farg3) &
bind(C, name="swigc_ThinVecDbl_resize_fill")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
real(C_DOUBLE), intent(in) :: farg3
end subroutine

subroutine swigc_ThinVecDbl_resize(farg1, farg2) &
bind(C, name="swigc_ThinVecDbl_resize")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
end subroutine

subroutine swigc_ThinVecDbl_assign_from(farg1, farg2) &
bind(C, name="swigc_ThinVecDbl_assign_from")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
import :: SwigfArrayWrapper
type(SwigfClassWrapper) :: farg1
type(SwigfArrayWrapper) :: farg2
end subroutine

function swigc_ThinVecDbl_view(farg1) &
bind(C, name="swigc_ThinVecDbl_view") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfArrayWrapper
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
type(SwigfArrayWrapper) :: fresult
end function

subroutine swigc_delete_ThinVecDbl(farg1) &
bind(C, name="swigc_delete_ThinVecDbl")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
end subroutine

function swigc_new_ThinVecInt() &
bind(C, name="swigc_new_ThinVecInt") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: fresult
end function

function swigc_new_ThinVecInt_create_fill(farg1, farg2) &
bind(C, name="swigc_new_ThinVecInt_create_fill") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
integer(C_INT), intent(in) :: farg1
integer(C_INT), intent(in) :: farg2
type(SwigfClassWrapper) :: fresult
end function

function swigc_new_ThinVecInt_create_count(farg1) &
bind(C, name="swigc_new_ThinVecInt_create_count") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
integer(C_INT), intent(in) :: farg1
type(SwigfClassWrapper) :: fresult
end function

function swigc_ThinVecInt_empty(farg1) &
bind(C, name="swigc_ThinVecInt_empty") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
logical(C_BOOL) :: fresult
end function

function swigc_ThinVecInt_size(farg1) &
bind(C, name="swigc_ThinVecInt_size") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
integer(C_INT) :: fresult
end function

function swigc_ThinVecInt_get(farg1, farg2) &
bind(C, name="swigc_ThinVecInt_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
integer(C_INT) :: fresult
end function

subroutine swigc_ThinVecInt_set(farg1, farg2, farg3) &
bind(C, name="swigc_ThinVecInt_set")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
integer(C_INT), intent(in) :: farg3
end subroutine

subroutine swigc_ThinVecInt_resize_fill(farg1, farg2, farg3) &
bind(C, name="swigc_ThinVecInt_resize_fill")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
integer(C_INT), intent(in) :: farg3
end subroutine

subroutine swigc_ThinVecInt_resize(farg1, farg2) &
bind(C, name="swigc_ThinVecInt_resize")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
integer(C_INT), intent(in) :: farg2
end subroutine

subroutine swigc_ThinVecInt_assign_from(farg1, farg2) &
bind(C, name="swigc_ThinVecInt_assign_from")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
import :: SwigfArrayWrapper
type(SwigfClassWrapper) :: farg1
type(SwigfArrayWrapper) :: farg2
end subroutine

function swigc_ThinVecInt_view(farg1) &
bind(C, name="swigc_ThinVecInt_view") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfArrayWrapper
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
type(SwigfArrayWrapper) :: fresult
end function

subroutine swigc_delete_ThinVecInt(farg1) &
bind(C, name="swigc_delete_ThinVecInt")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
end subroutine

subroutine swigc_print_vec__SWIG_1(farg1) &
bind(C, name="swigc_print_vec__SWIG_1")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
end subroutine

subroutine swigc_print_vec__SWIG_2(farg1) &
bind(C, name="swigc_print_vec__SWIG_2")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
end subroutine

 end interface


contains
 ! FORTRAN PROXY CODE
subroutine print_offbyone(indices)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt) :: indices
type(SwigfClassWrapper) :: farg1 

farg1 = indices%swigdata
call swigc_print_offbyone(farg1)
end subroutine

subroutine swigf_new_ThinVecDbl(self)
use, intrinsic :: ISO_C_BINDING
class(ThinVecDbl) :: self
type(SwigfClassWrapper) :: fresult 

if (self%swigdata%flag == SWIGF_UNINIT) call self%release()
fresult = swigc_new_ThinVecDbl()
self%swigdata = fresult
end subroutine

subroutine swigf_new_ThinVecDbl_create_fill(self, count, fillval)
use, intrinsic :: ISO_C_BINDING
class(ThinVecDbl) :: self
integer(C_INT), intent(in) :: count
real(C_DOUBLE), intent(in) :: fillval
type(SwigfClassWrapper) :: fresult 
integer(C_INT) :: farg1 
real(C_DOUBLE) :: farg2 

if (self%swigdata%flag == SWIGF_UNINIT) call self%release()
farg1 = count
farg2 = fillval
fresult = swigc_new_ThinVecDbl_create_fill(farg1, farg2)
self%swigdata = fresult
end subroutine

subroutine swigf_new_ThinVecDbl_create_count(self, count)
use, intrinsic :: ISO_C_BINDING
class(ThinVecDbl) :: self
integer(C_INT), intent(in) :: count
type(SwigfClassWrapper) :: fresult 
integer(C_INT) :: farg1 

if (self%swigdata%flag == SWIGF_UNINIT) call self%release()
farg1 = count
fresult = swigc_new_ThinVecDbl_create_count(farg1)
self%swigdata = fresult
end subroutine

function swigf_ThinVecDbl_empty(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
logical(C_BOOL) :: swigf_result
class(ThinVecDbl) :: self
logical(C_BOOL) :: fresult 
type(SwigfClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_ThinVecDbl_empty(farg1)
swigf_result = fresult
end function

function swigf_ThinVecDbl_size(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swigf_result
class(ThinVecDbl) :: self
integer(C_INT) :: fresult 
type(SwigfClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_ThinVecDbl_size(farg1)
swigf_result = fresult
end function

function swigf_ThinVecDbl_get(self, index) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swigf_result
class(ThinVecDbl) :: self
integer(C_INT), intent(in) :: index
real(C_DOUBLE) :: fresult 
type(SwigfClassWrapper) :: farg1 
integer(C_INT) :: farg2 

farg1 = self%swigdata
farg2 = index
fresult = swigc_ThinVecDbl_get(farg1, farg2)
swigf_result = fresult
end function

subroutine swigf_ThinVecDbl_set(self, index, val)
use, intrinsic :: ISO_C_BINDING
class(ThinVecDbl) :: self
integer(C_INT), intent(in) :: index
real(C_DOUBLE), intent(in) :: val
type(SwigfClassWrapper) :: farg1 
integer(C_INT) :: farg2 
real(C_DOUBLE) :: farg3 

farg1 = self%swigdata
farg2 = index
farg3 = val
call swigc_ThinVecDbl_set(farg1, farg2, farg3)
end subroutine

subroutine swigf_ThinVecDbl_resize_fill(self, newsize, fillval)
use, intrinsic :: ISO_C_BINDING
class(ThinVecDbl) :: self
integer(C_INT), intent(in) :: newsize
real(C_DOUBLE), intent(in) :: fillval
type(SwigfClassWrapper) :: farg1 
integer(C_INT) :: farg2 
real(C_DOUBLE) :: farg3 

farg1 = self%swigdata
farg2 = newsize
farg3 = fillval
call swigc_ThinVecDbl_resize_fill(farg1, farg2, farg3)
end subroutine

subroutine swigf_ThinVecDbl_resize(self, newsize)
use, intrinsic :: ISO_C_BINDING
class(ThinVecDbl) :: self
integer(C_INT), intent(in) :: newsize
type(SwigfClassWrapper) :: farg1 
integer(C_INT) :: farg2 

farg1 = self%swigdata
farg2 = newsize
call swigc_ThinVecDbl_resize(farg1, farg2)
end subroutine

subroutine swigf_ThinVecDbl_assign_from(self, arr)
use, intrinsic :: ISO_C_BINDING
class(ThinVecDbl) :: self
real(C_DOUBLE), dimension(:), target, intent(inout) :: arr
real(C_DOUBLE), pointer :: farg2_view
type(SwigfClassWrapper) :: farg1 
type(SwigfArrayWrapper) :: farg2 

farg1 = self%swigdata
farg2_view => arr(1)
farg2%data = c_loc(farg2_view)
farg2%size = size(arr)
call swigc_ThinVecDbl_assign_from(farg1, farg2)
end subroutine

function swigf_ThinVecDbl_view(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), dimension(:), pointer :: swigf_result
class(ThinVecDbl) :: self
type(SwigfArrayWrapper) :: fresult 
type(SwigfClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_ThinVecDbl_view(farg1)

call c_f_pointer(fresult%data, swigf_result, [fresult%size])
end function

subroutine swigf_delete_ThinVecDbl(self)
use, intrinsic :: ISO_C_BINDING
class(ThinVecDbl) :: self
type(SwigfClassWrapper) :: farg1 

if (.not. (self%swigdata%flag == SWIGF_UNINIT)) return
farg1 = self%swigdata
call swigc_delete_ThinVecDbl(farg1)
self%swigdata%flag = SWIGF_UNINIT
self%swigdata%ptr  = C_NULL_PTR
end subroutine

subroutine swigf_new_ThinVecInt(self)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt) :: self
type(SwigfClassWrapper) :: fresult 

if (self%swigdata%flag == SWIGF_UNINIT) call self%release()
fresult = swigc_new_ThinVecInt()
self%swigdata = fresult
end subroutine

subroutine swigf_new_ThinVecInt_create_fill(self, count, fillval)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt) :: self
integer(C_INT), intent(in) :: count
integer(C_INT), intent(in) :: fillval
type(SwigfClassWrapper) :: fresult 
integer(C_INT) :: farg1 
integer(C_INT) :: farg2 

if (self%swigdata%flag == SWIGF_UNINIT) call self%release()
farg1 = count
farg2 = fillval
fresult = swigc_new_ThinVecInt_create_fill(farg1, farg2)
self%swigdata = fresult
end subroutine

subroutine swigf_new_ThinVecInt_create_count(self, count)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt) :: self
integer(C_INT), intent(in) :: count
type(SwigfClassWrapper) :: fresult 
integer(C_INT) :: farg1 

if (self%swigdata%flag == SWIGF_UNINIT) call self%release()
farg1 = count
fresult = swigc_new_ThinVecInt_create_count(farg1)
self%swigdata = fresult
end subroutine

function swigf_ThinVecInt_empty(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
logical(C_BOOL) :: swigf_result
class(ThinVecInt) :: self
logical(C_BOOL) :: fresult 
type(SwigfClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_ThinVecInt_empty(farg1)
swigf_result = fresult
end function

function swigf_ThinVecInt_size(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swigf_result
class(ThinVecInt) :: self
integer(C_INT) :: fresult 
type(SwigfClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_ThinVecInt_size(farg1)
swigf_result = fresult
end function

function swigf_ThinVecInt_get(self, index) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swigf_result
class(ThinVecInt) :: self
integer(C_INT), intent(in) :: index
integer(C_INT) :: fresult 
type(SwigfClassWrapper) :: farg1 
integer(C_INT) :: farg2 

farg1 = self%swigdata
farg2 = index
fresult = swigc_ThinVecInt_get(farg1, farg2)
swigf_result = fresult
end function

subroutine swigf_ThinVecInt_set(self, index, val)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt) :: self
integer(C_INT), intent(in) :: index
integer(C_INT), intent(in) :: val
type(SwigfClassWrapper) :: farg1 
integer(C_INT) :: farg2 
integer(C_INT) :: farg3 

farg1 = self%swigdata
farg2 = index
farg3 = val
call swigc_ThinVecInt_set(farg1, farg2, farg3)
end subroutine

subroutine swigf_ThinVecInt_resize_fill(self, newsize, fillval)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt) :: self
integer(C_INT), intent(in) :: newsize
integer(C_INT), intent(in) :: fillval
type(SwigfClassWrapper) :: farg1 
integer(C_INT) :: farg2 
integer(C_INT) :: farg3 

farg1 = self%swigdata
farg2 = newsize
farg3 = fillval
call swigc_ThinVecInt_resize_fill(farg1, farg2, farg3)
end subroutine

subroutine swigf_ThinVecInt_resize(self, newsize)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt) :: self
integer(C_INT), intent(in) :: newsize
type(SwigfClassWrapper) :: farg1 
integer(C_INT) :: farg2 

farg1 = self%swigdata
farg2 = newsize
call swigc_ThinVecInt_resize(farg1, farg2)
end subroutine

subroutine swigf_ThinVecInt_assign_from(self, arr)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt) :: self
integer(C_INT), dimension(:), target, intent(inout) :: arr
integer(C_INT), pointer :: farg2_view
type(SwigfClassWrapper) :: farg1 
type(SwigfArrayWrapper) :: farg2 

farg1 = self%swigdata
farg2_view => arr(1)
farg2%data = c_loc(farg2_view)
farg2%size = size(arr)
call swigc_ThinVecInt_assign_from(farg1, farg2)
end subroutine

function swigf_ThinVecInt_view(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), dimension(:), pointer :: swigf_result
class(ThinVecInt) :: self
type(SwigfArrayWrapper) :: fresult 
type(SwigfClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_ThinVecInt_view(farg1)

call c_f_pointer(fresult%data, swigf_result, [fresult%size])
end function

subroutine swigf_delete_ThinVecInt(self)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt) :: self
type(SwigfClassWrapper) :: farg1 

if (.not. (self%swigdata%flag == SWIGF_UNINIT)) return
farg1 = self%swigdata
call swigc_delete_ThinVecInt(farg1)
self%swigdata%flag = SWIGF_UNINIT
self%swigdata%ptr  = C_NULL_PTR
end subroutine

subroutine print_vec__SWIG_1(v)
use, intrinsic :: ISO_C_BINDING
class(ThinVecDbl) :: v
type(SwigfClassWrapper) :: farg1 

farg1 = v%swigdata
call swigc_print_vec__SWIG_1(farg1)
end subroutine

subroutine print_vec__SWIG_2(v)
use, intrinsic :: ISO_C_BINDING
class(ThinVecInt) :: v
type(SwigfClassWrapper) :: farg1 

farg1 = v%swigdata
call swigc_print_vec__SWIG_2(farg1)
end subroutine


end module
