! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module downstream
 use, intrinsic :: ISO_C_BINDING
 use except
 implicit none
 private

 ! PUBLIC METHODS AND TYPES
 public :: throw_error

 ! WRAPPER DECLARATIONS
 interface
subroutine swigc_throw_error() &
bind(C, name="swigc_throw_error")
use, intrinsic :: ISO_C_BINDING

end subroutine

 end interface


contains
 ! FORTRAN PROXY CODE
subroutine throw_error()
use, intrinsic :: ISO_C_BINDING

call swigc_throw_error()

end subroutine


end module downstream
