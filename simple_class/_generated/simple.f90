! This file was automatically generated by SWIG (http://www.swig.org).
! Version 3.0.11
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module simple
 use, intrinsic :: ISO_C_BINDING
 implicit none
 ! PUBLIC METHODS AND TYPES
 public :: SimpleClass
 ! TYPES
 type SimpleClass
  type(C_PTR), private :: ptr = C_NULL_PTR
 contains
  procedure :: ctor => swigf_new_SimpleClass
  procedure :: dtor => swigf_delete_SimpleClass
 end type
 ! INTERFACES
 private
 interface
   function swigc_new_SimpleClass() &
      result(fresult) &
      bind(C, name="swigc_new_SimpleClass")
    use, intrinsic :: ISO_C_BINDING
    implicit none
    type(C_PTR) :: fresult
   end function
   subroutine swigc_delete_SimpleClass(farg1) &
      bind(C, name="swigc_delete_SimpleClass")
    use, intrinsic :: ISO_C_BINDING
    implicit none
    type(C_PTR), value :: farg1
   end subroutine
 end interface
contains
  subroutine swigf_new_SimpleClass(this)
    implicit none
    class(SimpleClass) :: this
    integer(C_SIZE_T)::size
    this%ptr = swigc_new_SimpleClass()
  end subroutine
  subroutine swigf_delete_SimpleClass(this)
    implicit none
    class(SimpleClass) :: this
    call swigc_delete_SimpleClass(this%ptr)
    this%ptr = C_NULL_PTR
  end subroutine
end module simple
