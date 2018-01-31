! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module spbug
 use, intrinsic :: ISO_C_BINDING
 implicit none

 ! PUBLIC METHODS AND TYPES
 public :: At
 public :: Ct
 ! TYPES
 type :: At
  type(C_PTR), public :: swigptr = C_NULL_PTR
 contains
  procedure :: release => swigf_delete_At
  procedure, private :: swigf_assign_At
  generic :: assignment(=) => swigf_assign_At
 end type
 type :: Ct
  type(C_PTR), public :: swigptr = C_NULL_PTR
 contains
  procedure :: create => swigf_new_Ct
  procedure :: release => swigf_delete_Ct
 end type

 ! WRAPPER DECLARATIONS
 private
 interface
  subroutine swigc_delete_At(farg1) &
     bind(C, name="swigc_delete_At")
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR), value :: farg1
  end subroutine
  function swigc_spcopy_At(farg1) &
     bind(C, name="swigc_spcopy_At") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR) :: fresult
   type(C_PTR), value :: farg1
  end function
  function swigc_new_Ct(farg1) &
     bind(C, name="swigc_new_Ct") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR) :: fresult
   type(C_PTR), value :: farg1
  end function
  subroutine swigc_delete_Ct(farg1) &
     bind(C, name="swigc_delete_Ct")
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR), value :: farg1
  end subroutine
 end interface

contains
  ! FORTRAN PROXY CODE
  subroutine swigf_delete_At(self)
   use, intrinsic :: ISO_C_BINDING
   class(At) :: self
   call swigc_delete_At(self%swigptr)
   self%swigptr = C_NULL_PTR
  end subroutine
  subroutine swigf_assign_At(self, other)
   use, intrinsic :: ISO_C_BINDING
   class(At), intent(inout) :: self
   type(At), intent(in) :: other
   call self%release()
   self%swigptr = swigc_spcopy_At(other%swigptr)
  end subroutine
  subroutine swigf_new_Ct(self, x)
   use, intrinsic :: ISO_C_BINDING
   class(Ct) :: self
   type(At) :: x
   if (c_associated(self%swigptr)) call self%release()
   self%swigptr = swigc_new_Ct(x%swigptr)
  end subroutine
  subroutine swigf_delete_Ct(self)
   use, intrinsic :: ISO_C_BINDING
   class(Ct) :: self
   call swigc_delete_Ct(self%swigptr)
   self%swigptr = C_NULL_PTR
  end subroutine
end module spbug