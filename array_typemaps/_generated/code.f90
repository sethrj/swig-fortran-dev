! This file was automatically generated by SWIG (http://www.swig.org).
! Version 3.0.11
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module code
 use, intrinsic :: ISO_C_BINDING
 implicit none
 ! PUBLIC METHODS AND TYPES
 public :: print_array
 ! TYPES
 ! INTERFACES
 private
 interface
  subroutine swigc_print_array(farg1, farg2) &
     bind(C, name="swigc_print_array")
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE), dimension(*), intent(in) :: farg1
   integer(C_INT), intent(in) :: farg2
  end subroutine
 end interface
contains
  ! FORTRAN PROXY CODE
  subroutine print_array(arr)
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE), dimension(:), intent(in) :: arr
   call swigc_print_array(arr, size(arr))
  end subroutine
end module code