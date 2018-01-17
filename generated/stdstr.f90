! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module stdstr
 use, intrinsic :: ISO_C_BINDING
 implicit none
 private

 ! PUBLIC METHODS AND TYPES
 public :: string

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


type, bind(C) :: SwigfArrayWrapper
  type(C_PTR), public :: data
  integer(C_SIZE_T), public :: size
end type

 public :: print_str
 public :: halve_str

 ! TYPES
 type :: string
  ! These should be treated as PROTECTED data
  type(SwigfClassWrapper), public :: swigdata
 contains
  procedure :: create => swigf_new_string
  procedure :: resize => swigf_string_resize
  procedure :: clear => swigf_string_clear
  procedure :: size => swigf_string_size
  procedure :: length => swigf_string_length
  procedure :: set => swigf_string_set
  procedure :: get => swigf_string_get
  procedure :: assign_from => swigf_string_assign_from
  procedure :: view => swigf_string_view
  procedure :: copy_to => swigf_string_copy_to
  procedure :: release => swigf_delete_string
 end type


 ! WRAPPER DECLARATIONS
 interface
function swigc_new_string() &
bind(C, name="swigc_new_string") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: fresult
end function

subroutine swigc_string_resize(farg1, farg2) &
bind(C, name="swigc_string_resize")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
integer(C_LONG), intent(in) :: farg2
end subroutine

subroutine swigc_string_clear(farg1) &
bind(C, name="swigc_string_clear")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
end subroutine

function swigc_string_size(farg1) &
bind(C, name="swigc_string_size") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
integer(C_LONG) :: fresult
end function

function swigc_string_length(farg1) &
bind(C, name="swigc_string_length") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
integer(C_LONG) :: fresult
end function

subroutine swigc_string_set(farg1, farg2, farg3) &
bind(C, name="swigc_string_set")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
integer(C_LONG), intent(in) :: farg2
integer(C_SIGNED_CHAR), intent(in) :: farg3
end subroutine

function swigc_string_get(farg1, farg2) &
bind(C, name="swigc_string_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
integer(C_LONG), intent(in) :: farg2
integer(C_SIGNED_CHAR) :: fresult
end function

subroutine swigc_string_assign_from(farg1, farg2) &
bind(C, name="swigc_string_assign_from")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
import :: SwigfArrayWrapper
type(SwigfClassWrapper) :: farg1
type(SwigfArrayWrapper) :: farg2
end subroutine

function swigc_string_view(farg1) &
bind(C, name="swigc_string_view") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigfArrayWrapper
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
type(SwigfArrayWrapper) :: fresult
end function

subroutine swigc_string_copy_to(farg1, farg2) &
bind(C, name="swigc_string_copy_to")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
import :: SwigfArrayWrapper
type(SwigfClassWrapper) :: farg1
type(SwigfArrayWrapper) :: farg2
end subroutine

subroutine swigc_delete_string(farg1) &
bind(C, name="swigc_delete_string")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
end subroutine

subroutine swigc_print_str(farg1) &
bind(C, name="swigc_print_str")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
end subroutine

subroutine swigc_halve_str(farg1) &
bind(C, name="swigc_halve_str")
use, intrinsic :: ISO_C_BINDING
import :: SwigfClassWrapper
type(SwigfClassWrapper) :: farg1
end subroutine

 end interface


contains
 ! FORTRAN PROXY CODE
subroutine swigf_new_string(self)
use, intrinsic :: ISO_C_BINDING
class(string) :: self
type(SwigfClassWrapper) :: fresult 

if (self%swigdata%flag == SWIGF_UNINIT) call self%release()
fresult = swigc_new_string()
self%swigdata = fresult
end subroutine

subroutine swigf_string_resize(self, count)
use, intrinsic :: ISO_C_BINDING
class(string) :: self
integer(C_LONG), intent(in) :: count
type(SwigfClassWrapper) :: farg1 
integer(C_LONG) :: farg2 

farg1 = self%swigdata
farg2 = count
call swigc_string_resize(farg1, farg2)
end subroutine

subroutine swigf_string_clear(self)
use, intrinsic :: ISO_C_BINDING
class(string) :: self
type(SwigfClassWrapper) :: farg1 

farg1 = self%swigdata
call swigc_string_clear(farg1)
end subroutine

function swigf_string_size(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
integer(C_LONG) :: swigf_result
class(string) :: self
integer(C_LONG) :: fresult 
type(SwigfClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_string_size(farg1)
swigf_result = fresult
end function

function swigf_string_length(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
integer(C_LONG) :: swigf_result
class(string) :: self
integer(C_LONG) :: fresult 
type(SwigfClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_string_length(farg1)
swigf_result = fresult
end function

subroutine swigf_string_set(self, pos, v)
use, intrinsic :: ISO_C_BINDING
class(string) :: self
integer(C_LONG), intent(in) :: pos
integer(C_SIGNED_CHAR), intent(in) :: v
type(SwigfClassWrapper) :: farg1 
integer(C_LONG) :: farg2 
integer(C_SIGNED_CHAR) :: farg3 

farg1 = self%swigdata
farg2 = pos
farg3 = v
call swigc_string_set(farg1, farg2, farg3)
end subroutine

function swigf_string_get(self, pos) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
integer(C_SIGNED_CHAR) :: swigf_result
class(string) :: self
integer(C_LONG), intent(in) :: pos
integer(C_SIGNED_CHAR) :: fresult 
type(SwigfClassWrapper) :: farg1 
integer(C_LONG) :: farg2 

farg1 = self%swigdata
farg2 = pos
fresult = swigc_string_get(farg1, farg2)
swigf_result = fresult
end function


subroutine swigf_string_to_chararray(string, chars, wrap)
  use, intrinsic :: ISO_C_BINDING
  character(kind=C_CHAR, len=*), intent(IN) :: string
  character(kind=C_CHAR), dimension(:), target, allocatable, intent(OUT) :: chars
  type(SwigfArrayWrapper), intent(OUT) :: wrap 
  integer(kind=C_SIZE_T) :: i

  allocate(character(kind=C_CHAR) :: chars(len(string)))
  do i=1,size(chars)
    chars(i) = string(i:i)
  enddo
  wrap%data = c_loc(chars)
  wrap%size = size(chars)
end subroutine

subroutine swigf_string_assign_from(self, view)
use, intrinsic :: ISO_C_BINDING
class(string) :: self
character(kind=C_CHAR, len=*), target :: view

character(kind=C_CHAR), dimension(:), allocatable, target :: farg2_chars
type(SwigfClassWrapper) :: farg1 
type(SwigfArrayWrapper) :: farg2 

farg1 = self%swigdata

call swigf_string_to_chararray(view, farg2_chars, farg2)

call swigc_string_assign_from(farg1, farg2)
end subroutine

function swigf_string_view(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
character(kind=C_CHAR), dimension(:), pointer :: swigf_result
class(string) :: self
type(SwigfArrayWrapper) :: fresult 
type(SwigfClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_string_view(farg1)

call c_f_pointer(fresult%data, swigf_result, [fresult%size])
end function

subroutine swigf_string_copy_to(self, view)
use, intrinsic :: ISO_C_BINDING
class(string) :: self
character(kind=C_CHAR, len=*), target :: view

character(kind=C_CHAR), dimension(:), allocatable, target :: farg2_chars
type(SwigfClassWrapper) :: farg1 
type(SwigfArrayWrapper) :: farg2 

farg1 = self%swigdata

call swigf_string_to_chararray(view, farg2_chars, farg2)

call swigc_string_copy_to(farg1, farg2)
end subroutine

subroutine swigf_delete_string(self)
use, intrinsic :: ISO_C_BINDING
class(string) :: self
type(SwigfClassWrapper) :: farg1 

if (.not. (self%swigdata%flag == SWIGF_UNINIT)) return
farg1 = self%swigdata
call swigc_delete_string(farg1)
self%swigdata%flag = SWIGF_UNINIT
self%swigdata%ptr  = C_NULL_PTR
end subroutine

subroutine print_str(s)
use, intrinsic :: ISO_C_BINDING
class(string) :: s
type(SwigfClassWrapper) :: farg1 

farg1 = s%swigdata
call swigc_print_str(farg1)
end subroutine

subroutine halve_str(s)
use, intrinsic :: ISO_C_BINDING
class(string) :: s
type(SwigfClassWrapper) :: farg1 

farg1 = s%swigdata
call swigc_halve_str(farg1)
end subroutine


end module
