! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module except
 use, intrinsic :: ISO_C_BINDING
 implicit none
 private

 ! PUBLIC METHODS AND TYPES

 public :: ierr
 public :: serr

 public :: alpha
 public :: bravo

 ! PARAMETERS
 integer(C_INT), parameter, public :: SWIG_FORTRAN_ERROR_STRLEN = 1024_C_INT

 integer(C_INT), bind(C) :: ierr = 0
 character(kind=C_CHAR, len=1024), bind(C) :: serr = ""


 ! WRAPPER DECLARATIONS
 interface
subroutine swigc_alpha(farg1) &
bind(C, name="swigc_alpha")
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
end subroutine

function swigc_bravo() &
bind(C, name="swigc_bravo") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: fresult
end function

 end interface


contains
 ! FORTRAN PROXY CODE
subroutine alpha(val)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: val
integer(C_INT) :: farg1 

farg1 = val
call swigc_alpha(farg1)
end subroutine

function bravo() &
result(swigf_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swigf_result
integer(C_INT) :: fresult 

fresult = swigc_bravo()
swigf_result = fresult
end function


end module except
