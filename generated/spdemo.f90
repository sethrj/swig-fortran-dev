! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module spdemo
 use, intrinsic :: ISO_C_BINDING
 implicit none

 ! PUBLIC METHODS AND TYPES
 public :: Foo
 public :: print_crsp
 public :: print_sp
 public :: print_spc
 public :: print_crspc
 public :: print_cr
 ! TYPES
 type :: Foo
  type(C_PTR), public :: ptr = C_NULL_PTR
 contains
  procedure :: set_d_val => swigf_set_Foo_d_val
  procedure :: get_d_val => swigf_get_Foo_d_val
  procedure, private :: create__SWIG_0 => swigf_new_Foo__SWIG_0
  procedure, private :: create__SWIG_1 => swigf_new_Foo__SWIG_1
  procedure :: release => swigf_delete_Foo
  procedure :: get => swigf_Foo_get
  procedure :: set => swigf_Foo_set
  generic :: create => create__SWIG_0, create__SWIG_1
 end type

 ! WRAPPER DECLARATIONS
 private
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
   real(C_DOUBLE) :: fresult
   type(C_PTR), value :: farg1
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
   type(C_PTR) :: fresult
   real(C_DOUBLE), intent(in) :: farg1
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
   real(C_DOUBLE) :: fresult
   type(C_PTR), value :: farg1
  end function
  subroutine swigc_Foo_set(farg1, farg2) &
     bind(C, name="swigc_Foo_set")
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR), value :: farg1
   real(C_DOUBLE), intent(in) :: farg2
  end subroutine
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
   call swigc_set_Foo_d_val(self%ptr, d_val)
  end subroutine
  function swigf_get_Foo_d_val(self) &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE) :: fresult
   class(Foo) :: self
   fresult = swigc_get_Foo_d_val(self%ptr)
  end function
  subroutine swigf_new_Foo__SWIG_0(self)
   use, intrinsic :: ISO_C_BINDING
   class(Foo) :: self
   if (c_associated(self%ptr)) call self%release()
   self%ptr = swigc_new_Foo__SWIG_0()
  end subroutine
  subroutine swigf_new_Foo__SWIG_1(self, val)
   use, intrinsic :: ISO_C_BINDING
   class(Foo) :: self
   real(C_DOUBLE), intent(in) :: val
   if (c_associated(self%ptr)) call self%release()
   self%ptr = swigc_new_Foo__SWIG_1(val)
  end subroutine
  subroutine swigf_delete_Foo(self)
   use, intrinsic :: ISO_C_BINDING
   class(Foo) :: self
   call swigc_delete_Foo(self%ptr)
   self%ptr = C_NULL_PTR
  end subroutine
  function swigf_Foo_get(self) &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE) :: fresult
   class(Foo) :: self
   fresult = swigc_Foo_get(self%ptr)
  end function
  subroutine swigf_Foo_set(self, v)
   use, intrinsic :: ISO_C_BINDING
   class(Foo) :: self
   real(C_DOUBLE), intent(in) :: v
   call swigc_Foo_set(self%ptr, v)
  end subroutine
  subroutine print_crsp(f)
   use, intrinsic :: ISO_C_BINDING
   type(Foo) :: f
   call swigc_print_crsp(f%ptr)
  end subroutine
  subroutine print_sp(f)
   use, intrinsic :: ISO_C_BINDING
   type(Foo) :: f
   call swigc_print_sp(f%ptr)
  end subroutine
  subroutine print_spc(f)
   use, intrinsic :: ISO_C_BINDING
   type(Foo) :: f
   call swigc_print_spc(f%ptr)
  end subroutine
  subroutine print_crspc(f)
   use, intrinsic :: ISO_C_BINDING
   type(Foo) :: f
   call swigc_print_crspc(f%ptr)
  end subroutine
  subroutine print_cr(f)
   use, intrinsic :: ISO_C_BINDING
   class(Foo) :: f
   call swigc_print_cr(f%ptr)
  end subroutine
end module spdemo