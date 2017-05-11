! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module static_members
 use, intrinsic :: ISO_C_BINDING
 implicit none

 ! PUBLIC METHODS AND TYPES
 public :: BaseClass
 ! TYPES
 type :: BaseClass
  type(C_PTR), public :: ptr = C_NULL_PTR
  logical, private :: own = .false.
 contains
  procedure, nopass :: set_i => swigf_set_BaseClass_i
  procedure, nopass :: get_i => swigf_get_BaseClass_i
  procedure, nopass :: f => swigf_BaseClass_f
  procedure :: create => swigf_new_BaseClass
  procedure :: release => swigf_delete_BaseClass
 end type

 ! WRAPPER DECLARATIONS
 private
 interface
  subroutine swigc_set_BaseClass_i(farg1) &
     bind(C, name="swigc_set_BaseClass_i")
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT), intent(in) :: farg1
  end subroutine
  function swigc_get_BaseClass_i() &
     bind(C, name="swigc_get_BaseClass_i") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT) :: fresult
  end function
  function swigc_BaseClass_f(farg1) &
     bind(C, name="swigc_BaseClass_f") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE) :: fresult
   integer(C_INT), intent(in) :: farg1
  end function
  function swigc_new_BaseClass() &
     bind(C, name="swigc_new_BaseClass") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR) :: fresult
  end function
  subroutine swigc_delete_BaseClass(farg1) &
     bind(C, name="swigc_delete_BaseClass")
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR), value :: farg1
  end subroutine
 end interface

contains
  ! FORTRAN PROXY CODE
  subroutine swigf_set_BaseClass_i(i)
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT), intent(in) :: i
   call swigc_set_BaseClass_i(i)
  end subroutine
  function swigf_get_BaseClass_i() &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT) :: fresult
   fresult = swigc_get_BaseClass_i()
  end function
  function swigf_BaseClass_f(x) &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE) :: fresult
   integer(C_INT), intent(in) :: x
   fresult = swigc_BaseClass_f(x)
  end function
  subroutine swigf_new_BaseClass(self)
   use, intrinsic :: ISO_C_BINDING
   class(BaseClass) :: self
   if (c_associated(self%ptr)) call self%release()
   self%ptr = swigc_new_BaseClass()
   self%own = .true.
  end subroutine
  subroutine swigf_delete_BaseClass(self)
   use, intrinsic :: ISO_C_BINDING
   class(BaseClass) :: self
   if (self%own) then
    call swigc_delete_BaseClass(self%ptr)
    self%own = .false.
   end if
   self%ptr = C_NULL_PTR
  end subroutine
end module static_members
