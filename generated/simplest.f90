! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module simplest
 use, intrinsic :: ISO_C_BINDING
 implicit none
 private

 ! PUBLIC METHODS AND TYPES
 public :: add

 ! WRAPPER DECLARATIONS
 interface
function swigc_add(farg1, farg2) &
bind(C, name="swigc_add") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
integer(C_INT), intent(in) :: farg2
integer(C_INT) :: fresult
end function

 end interface


contains
 ! FORTRAN PROXY CODE
function add(a, b) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT), intent(in) :: a
integer(C_INT), intent(in) :: b
integer(C_INT) :: fresult 
integer(C_INT) :: farg1 
integer(C_INT) :: farg2 

farg1 = a
farg2 = b
fresult = swigc_add(farg1, farg2)
swig_result = fresult
end function


end module
