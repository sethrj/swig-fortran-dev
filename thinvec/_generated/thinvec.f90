! This file was automatically generated by SWIG (http://www.swig.org).
! Version 3.0.11
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module thinvec
 use, intrinsic :: ISO_C_BINDING
 implicit none
 ! PUBLIC METHODS AND TYPES
 public :: print_vec
 public :: ThinVecDbl
 ! TYPES
 type ThinVecDbl
  type(C_PTR), private :: ptr = C_NULL_PTR
 contains
  procedure :: ctor => swigf_new_ThinVecDbl
  procedure :: empty => swigf_ThinVecDbl_empty
  procedure :: size => swigf_ThinVecDbl_size
  procedure :: get => swigf_ThinVecDbl_get
  procedure :: set => swigf_ThinVecDbl_set
  procedure :: resize => swigf_ThinVecDbl_resize
  procedure :: dtor => swigf_delete_ThinVecDbl
 end type
 ! INTERFACES
 private
 interface
  subroutine swigc_print_vec(farg1) &
     bind(C, name="swigc_print_vec")
   use, intrinsic :: ISO_C_BINDING
   implicit none
   type(C_PTR), value :: farg1
  end subroutine
  function swigc_new_ThinVecDbl() &
     bind(C, name="swigc_new_ThinVecDbl") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   implicit none
   type(C_PTR) :: fresult
  end function
  function swigc_ThinVecDbl_empty(farg1) &
     bind(C, name="swigc_ThinVecDbl_empty") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   implicit none
   logical(C_BOOL) :: fresult
   type(C_PTR), value :: farg1
  end function
  function swigc_ThinVecDbl_size(farg1) &
     bind(C, name="swigc_ThinVecDbl_size") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   implicit none
   integer(C_INT) :: fresult
   type(C_PTR), value :: farg1
  end function
  function swigc_ThinVecDbl_get(farg1, farg2) &
     bind(C, name="swigc_ThinVecDbl_get") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   implicit none
   real(C_DOUBLE) :: fresult
   type(C_PTR), value :: farg1
   integer(C_INT) :: farg2
  end function
  subroutine swigc_ThinVecDbl_set(farg1, farg2, farg3) &
     bind(C, name="swigc_ThinVecDbl_set")
   use, intrinsic :: ISO_C_BINDING
   implicit none
   type(C_PTR), value :: farg1
   integer(C_INT) :: farg2
   real(C_DOUBLE) :: farg3
  end subroutine
  subroutine swigc_ThinVecDbl_resize(farg1, farg2) &
     bind(C, name="swigc_ThinVecDbl_resize")
   use, intrinsic :: ISO_C_BINDING
   implicit none
   type(C_PTR), value :: farg1
   integer(C_INT) :: farg2
  end subroutine
  subroutine swigc_delete_ThinVecDbl(farg1) &
     bind(C, name="swigc_delete_ThinVecDbl")
   use, intrinsic :: ISO_C_BINDING
   implicit none
   type(C_PTR), value :: farg1
  end subroutine
 end interface
contains
  ! FORTRAN PROXY CODE
  subroutine print_vec(farg1)
   use, intrinsic :: ISO_C_BINDING
   implicit none
   class(ThinVecDbl) :: farg1
   call swigc_print_vec(farg1%ptr)
  end subroutine
  subroutine swigf_new_ThinVecDbl(fresult)
   use, intrinsic :: ISO_C_BINDING
   implicit none
   class(ThinVecDbl) :: fresult
   fresult%ptr = swigc_new_ThinVecDbl()
  end subroutine
  function swigf_ThinVecDbl_empty(farg1) &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   implicit none
   logical(C_BOOL) :: fresult
   class(ThinVecDbl) :: farg1
   fresult = swigc_ThinVecDbl_empty(farg1%ptr)
  end function
  function swigf_ThinVecDbl_size(farg1) &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   implicit none
   integer(C_INT) :: fresult
   class(ThinVecDbl) :: farg1
   fresult = swigc_ThinVecDbl_size(farg1%ptr)
  end function
  function swigf_ThinVecDbl_get(farg1, farg2) &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   implicit none
   real(C_DOUBLE) :: fresult
   class(ThinVecDbl) :: farg1
   integer(C_INT) :: farg2
   fresult = swigc_ThinVecDbl_get(farg1%ptr, farg2)
  end function
  subroutine swigf_ThinVecDbl_set(farg1, farg2, farg3)
   use, intrinsic :: ISO_C_BINDING
   implicit none
   class(ThinVecDbl) :: farg1
   integer(C_INT) :: farg2
   real(C_DOUBLE) :: farg3
   call swigc_ThinVecDbl_set(farg1%ptr, farg2, farg3)
  end subroutine
  subroutine swigf_ThinVecDbl_resize(farg1, farg2)
   use, intrinsic :: ISO_C_BINDING
   implicit none
   class(ThinVecDbl) :: farg1
   integer(C_INT) :: farg2
   call swigc_ThinVecDbl_resize(farg1%ptr, farg2)
  end subroutine
  subroutine swigf_delete_ThinVecDbl(farg1)
   use, intrinsic :: ISO_C_BINDING
   implicit none
   class(ThinVecDbl) :: farg1
   call swigc_delete_ThinVecDbl(farg1%ptr)
  end subroutine
end module thinvec
