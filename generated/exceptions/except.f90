! This file was automatically generated by SWIG (http://www.swig.org).
! Version 3.0.12
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module except
 use, intrinsic :: ISO_C_BINDING
 implicit none

 ! PUBLIC METHODS AND TYPES
 public :: get_swig_ierr
 public :: get_swig_serr
 public :: clear_swig_err
 public :: alpha
 public :: bravo
 ! TYPES

 ! WRAPPER DECLARATIONS
 private
 interface
  function swigc_get_swig_ierr() &
     bind(C, name="swigc_get_swig_ierr") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT) :: fresult
  end function
  subroutine swigc_get_swig_serr(farg1, farg2) &
     bind(C, name="swigc_get_swig_serr")
   use, intrinsic :: ISO_C_BINDING
   character(C_CHAR) :: farg1
   integer(C_INT), intent(in) :: farg2
  end subroutine
  subroutine swigc_clear_swig_err() &
     bind(C, name="swigc_clear_swig_err")
   use, intrinsic :: ISO_C_BINDING
  end subroutine
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
  function get_swig_ierr() &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT) :: fresult
   fresult = swigc_get_swig_ierr()
  end function
  subroutine get_swig_serr(STRING)
   use, intrinsic :: ISO_C_BINDING
   character(len=*) :: STRING
   call swigc_get_swig_serr(STRING, len(STRING))
  end subroutine
  subroutine clear_swig_err()
   use, intrinsic :: ISO_C_BINDING
   call swigc_clear_swig_err()
  end subroutine
  subroutine alpha(val)
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT), intent(in) :: val
   call swigc_alpha(val)
  end subroutine
  function bravo() &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT) :: fresult
   fresult = swigc_bravo()
  end function
end module except
