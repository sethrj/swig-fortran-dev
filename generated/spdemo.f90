! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module spdemo
 use, intrinsic :: ISO_C_BINDING
 implicit none
 private

 ! PUBLIC METHODS AND TYPES
 public :: Foo
 public :: use_count
 public :: print_crsp
 public :: print_sp
 public :: print_spc
 public :: print_crspc
 public :: print_cr

 ! TYPES
 type :: Foo
  ! These should be treated as PROTECTED data
  type(C_PTR), public :: swigptr = C_NULL_PTR
 contains
  procedure :: set_d_val => swigf_set_Foo_d_val
  procedure :: get_d_val => swigf_get_Foo_d_val
  procedure, private :: create__SWIG_0 => swigf_new_Foo__SWIG_0
  procedure, private :: create__SWIG_1 => swigf_new_Foo__SWIG_1
  procedure, private :: create__SWIG_2 => swigf_new_Foo__SWIG_2
  procedure :: release => swigf_delete_Foo
  procedure :: get => swigf_Foo_get
  procedure :: set => swigf_Foo_set
  procedure :: clone => swigf_Foo_clone
  procedure :: clone_sp => swigf_Foo_clone_sp
  procedure :: mutable_ref => swigf_Foo_mutable_ref
  procedure :: ref => swigf_Foo_ref
  procedure :: mutable_ptr => swigf_Foo_mutable_ptr
  procedure :: ptr => swigf_Foo_ptr
  procedure, private :: swigf_assign_Foo
  generic :: create => create__SWIG_0, create__SWIG_1, create__SWIG_2
  generic :: assignment(=) => swigf_assign_Foo
 end type


 ! WRAPPER DECLARATIONS
 interface
subroutine swigc_set_Foo_d_val(farg1, farg2) &
bind(C, name="swigc_set_Foo_d_val")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
real(C_DOUBLE), intent(in) :: farg2
end subroutine

function swigc_get_Foo_d_val(farg1) &
bind(C, name="swigc_get_Foo_d_val") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
real(C_DOUBLE) :: fresult
end function

function swigc_new_Foo__SWIG_0() &
bind(C, name="swigc_new_Foo__SWIG_0") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR) :: fresult
end function

function swigc_new_Foo__SWIG_1(farg1) &
bind(C, name="swigc_new_Foo__SWIG_1") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR) :: fresult
end function

function swigc_new_Foo__SWIG_2(farg1) &
bind(C, name="swigc_new_Foo__SWIG_2") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), intent(in) :: farg1
type(C_PTR) :: fresult
end function

subroutine swigc_delete_Foo(farg1) &
bind(C, name="swigc_delete_Foo")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

function swigc_Foo_get(farg1) &
bind(C, name="swigc_Foo_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
real(C_DOUBLE) :: fresult
end function

subroutine swigc_Foo_set(farg1, farg2) &
bind(C, name="swigc_Foo_set")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
real(C_DOUBLE), intent(in) :: farg2
end subroutine

function swigc_Foo_clone(farg1) &
bind(C, name="swigc_Foo_clone") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR) :: fresult
end function

function swigc_Foo_clone_sp(farg1) &
bind(C, name="swigc_Foo_clone_sp") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR) :: fresult
end function

function swigc_Foo_mutable_ref(farg1) &
bind(C, name="swigc_Foo_mutable_ref") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR) :: fresult
end function

function swigc_Foo_ref(farg1) &
bind(C, name="swigc_Foo_ref") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR) :: fresult
end function

function swigc_Foo_mutable_ptr(farg1) &
bind(C, name="swigc_Foo_mutable_ptr") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR) :: fresult
end function

function swigc_Foo_ptr(farg1) &
bind(C, name="swigc_Foo_ptr") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR) :: fresult
end function

  function swigc_spcopy_Foo(farg1) &
     bind(C, name="swigc_spcopy_Foo") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR) :: fresult
   type(C_PTR), value :: farg1
  end function
function swigc_use_count(farg1) &
bind(C, name="swigc_use_count") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
integer(C_INT) :: fresult
end function

subroutine swigc_print_crsp(farg1) &
bind(C, name="swigc_print_crsp")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

subroutine swigc_print_sp(farg1) &
bind(C, name="swigc_print_sp")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

subroutine swigc_print_spc(farg1) &
bind(C, name="swigc_print_spc")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

subroutine swigc_print_crspc(farg1) &
bind(C, name="swigc_print_crspc")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

subroutine swigc_print_cr(farg1) &
bind(C, name="swigc_print_cr")
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
end subroutine

 end interface


contains
 ! FORTRAN PROXY CODE
subroutine swigf_set_Foo_d_val(self, d_val)
use, intrinsic :: ISO_C_BINDING
class(Foo) :: self
real(C_DOUBLE), intent(in) :: d_val
type(C_PTR) :: farg1 
real(C_DOUBLE) :: farg2 

farg1 = self%swigptr
farg2 = d_val
call swigc_set_Foo_d_val(farg1, farg2)
end subroutine

function swigf_get_Foo_d_val(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swigf_result
class(Foo) :: self
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 

farg1 = self%swigptr
fresult = swigc_get_Foo_d_val(farg1)
swigf_result = fresult
end function

subroutine swigf_new_Foo__SWIG_0(self)
use, intrinsic :: ISO_C_BINDING
class(Foo) :: self
type(C_PTR) :: fresult 

if (c_associated(self%swigptr)) call self%release()
fresult = swigc_new_Foo__SWIG_0()
self%swigptr = fresult
end subroutine

subroutine swigf_new_Foo__SWIG_1(self, other)
use, intrinsic :: ISO_C_BINDING
class(Foo) :: self
class(Foo) :: other
type(C_PTR) :: fresult 
type(C_PTR) :: farg1 

if (c_associated(self%swigptr)) call self%release()
farg1 = other%swigptr
fresult = swigc_new_Foo__SWIG_1(farg1)
self%swigptr = fresult
end subroutine

subroutine swigf_new_Foo__SWIG_2(self, val)
use, intrinsic :: ISO_C_BINDING
class(Foo) :: self
real(C_DOUBLE), intent(in) :: val
type(C_PTR) :: fresult 
real(C_DOUBLE) :: farg1 

if (c_associated(self%swigptr)) call self%release()
farg1 = val
fresult = swigc_new_Foo__SWIG_2(farg1)
self%swigptr = fresult
end subroutine

subroutine swigf_delete_Foo(self)
use, intrinsic :: ISO_C_BINDING
class(Foo) :: self
type(C_PTR) :: farg1 

if (.not. c_associated(self%swigptr)) return
farg1 = self%swigptr
call swigc_delete_Foo(farg1)
self%swigptr = C_NULL_PTR
end subroutine

function swigf_Foo_get(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swigf_result
class(Foo) :: self
real(C_DOUBLE) :: fresult 
type(C_PTR) :: farg1 

farg1 = self%swigptr
fresult = swigc_Foo_get(farg1)
swigf_result = fresult
end function

subroutine swigf_Foo_set(self, v)
use, intrinsic :: ISO_C_BINDING
class(Foo) :: self
real(C_DOUBLE), intent(in) :: v
type(C_PTR) :: farg1 
real(C_DOUBLE) :: farg2 

farg1 = self%swigptr
farg2 = v
call swigc_Foo_set(farg1, farg2)
end subroutine

function swigf_Foo_clone(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
type(Foo) :: swigf_result
class(Foo) :: self
type(C_PTR) :: fresult 
type(C_PTR) :: farg1 

farg1 = self%swigptr
fresult = swigc_Foo_clone(farg1)
swigf_result%swigptr = fresult
end function

function swigf_Foo_clone_sp(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
type(Foo) :: swigf_result
class(Foo) :: self
type(C_PTR) :: fresult 
type(C_PTR) :: farg1 

farg1 = self%swigptr
fresult = swigc_Foo_clone_sp(farg1)
swigf_result%swigptr = fresult
end function

function swigf_Foo_mutable_ref(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
type(Foo) :: swigf_result
class(Foo) :: self
type(C_PTR) :: fresult 
type(C_PTR) :: farg1 

farg1 = self%swigptr
fresult = swigc_Foo_mutable_ref(farg1)
swigf_result%swigptr = fresult
end function

function swigf_Foo_ref(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
type(Foo) :: swigf_result
class(Foo) :: self
type(C_PTR) :: fresult 
type(C_PTR) :: farg1 

farg1 = self%swigptr
fresult = swigc_Foo_ref(farg1)
swigf_result%swigptr = fresult
end function

function swigf_Foo_mutable_ptr(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
type(Foo) :: swigf_result
class(Foo) :: self
type(C_PTR) :: fresult 
type(C_PTR) :: farg1 

farg1 = self%swigptr
fresult = swigc_Foo_mutable_ptr(farg1)
swigf_result%swigptr = fresult
end function

function swigf_Foo_ptr(self) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
type(Foo) :: swigf_result
class(Foo) :: self
type(C_PTR) :: fresult 
type(C_PTR) :: farg1 

farg1 = self%swigptr
fresult = swigc_Foo_ptr(farg1)
swigf_result%swigptr = fresult
end function

  subroutine swigf_assign_Foo(self, other)
   use, intrinsic :: ISO_C_BINDING
   class(Foo), intent(inout) :: self
   type(Foo), intent(in) :: other
if (c_associated(self%swigptr)) call self%release()
   self%swigptr = swigc_spcopy_Foo(other%swigptr)
  end subroutine
function use_count(f) &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swigf_result
type(Foo) :: f
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 

farg1 = f%swigptr
fresult = swigc_use_count(farg1)
swigf_result = fresult
end function

subroutine print_crsp(f)
use, intrinsic :: ISO_C_BINDING
type(Foo) :: f
type(C_PTR) :: farg1 

farg1 = f%swigptr
call swigc_print_crsp(farg1)
end subroutine

subroutine print_sp(f)
use, intrinsic :: ISO_C_BINDING
type(Foo) :: f
type(C_PTR) :: farg1 

farg1 = f%swigptr
call swigc_print_sp(farg1)
end subroutine

subroutine print_spc(f)
use, intrinsic :: ISO_C_BINDING
type(Foo) :: f
type(C_PTR) :: farg1 

farg1 = f%swigptr
call swigc_print_spc(farg1)
end subroutine

subroutine print_crspc(f)
use, intrinsic :: ISO_C_BINDING
type(Foo) :: f
type(C_PTR) :: farg1 

farg1 = f%swigptr
call swigc_print_crspc(farg1)
end subroutine

subroutine print_cr(f)
use, intrinsic :: ISO_C_BINDING
class(Foo) :: f
type(C_PTR) :: farg1 

farg1 = f%swigptr
call swigc_print_cr(farg1)
end subroutine


end module spdemo
