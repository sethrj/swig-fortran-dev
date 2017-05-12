! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module simple
 use, intrinsic :: ISO_C_BINDING
 implicit none

 ! PUBLIC METHODS AND TYPES
 public :: gcd
 public :: set_Foo
 public :: get_Foo
 ! TYPES

 ! WRAPPER DECLARATIONS
 private
 interface
  function swigc_gcd(farg1, farg2) &
     bind(C, name="swigc_gcd") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT) :: fresult
   integer(C_INT), intent(in) :: farg1
   integer(C_INT), intent(in) :: farg2
  end function
  subroutine swigc_set_Foo(farg1) &
     bind(C, name="swigc_set_Foo")
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE), intent(in) :: farg1
  end subroutine
  function swigc_get_Foo() &
     bind(C, name="swigc_get_Foo") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE) :: fresult
  end function
 end interface

contains
  ! FORTRAN PROXY CODE
  function gcd(x, y) &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT) :: fresult
   integer(C_INT), intent(in) :: x
   integer(C_INT), intent(in) :: y
   fresult = swigc_gcd(x, y)
  end function
  subroutine set_Foo(Foo)
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE), intent(in) :: Foo
   call swigc_set_Foo(Foo)
  end subroutine
  function get_Foo() &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE) :: fresult
   fresult = swigc_get_Foo()
  end function
end module simple