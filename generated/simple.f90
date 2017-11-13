! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module simple
 use, intrinsic :: ISO_C_BINDING
 implicit none
 private

 ! PUBLIC METHODS AND TYPES
 public :: gcd
 public :: set_Foo
 public :: get_Foo

 ! WRAPPER DECLARATIONS
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
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swigf_result
integer(C_INT), intent(in) :: x
integer(C_INT), intent(in) :: y
integer(C_INT) :: fresult 
integer(C_INT) :: farg1 
integer(C_INT) :: farg2 

farg1 = x
farg2 = y
fresult = swigc_gcd(farg1, farg2)
swigf_result = fresult
end function

subroutine set_Foo(foo)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE), intent(in) :: foo
real(C_DOUBLE) :: farg1 

farg1 = foo
call swigc_set_Foo(farg1)

end subroutine

function get_Foo() &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
real(C_DOUBLE) :: swigf_result
real(C_DOUBLE) :: fresult 

fresult = swigc_get_Foo()
swigf_result = fresult
end function


end module simple
