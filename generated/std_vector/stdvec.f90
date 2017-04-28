! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module stdvec
 use, intrinsic :: ISO_C_BINDING
 implicit none

 ! PUBLIC METHODS AND TYPES
 public :: get_swig_ierr
 public :: get_swig_serr
 public :: clear_swig_err
 public :: VecDbl
 public :: print_vecdbl
 ! TYPES
 type :: VecDbl
  type(C_PTR), public :: ptr = C_NULL_PTR
  logical, private :: own = .false.
 contains
  procedure, private :: create__SWIG_0 => swigf_new_VecDbl__SWIG_0
  procedure, private :: create__SWIG_1 => swigf_new_VecDbl__SWIG_1
  procedure, private :: create__SWIG_2 => swigf_new_VecDbl__SWIG_2
  procedure :: size => swigf_VecDbl_size
  procedure :: capacity => swigf_VecDbl_capacity
  procedure :: empty => swigf_VecDbl_empty
  procedure :: clear => swigf_VecDbl_clear
  procedure :: reserve => swigf_VecDbl_reserve
  procedure, private :: resize__SWIG_0 => swigf_VecDbl_resize__SWIG_0
  procedure, private :: resize__SWIG_1 => swigf_VecDbl_resize__SWIG_1
  procedure :: push_back => swigf_VecDbl_push_back
  procedure :: front => swigf_VecDbl_front
  procedure :: back => swigf_VecDbl_back
  procedure :: set => swigf_VecDbl_set
  procedure :: get => swigf_VecDbl_get
  procedure :: assign_from => swigf_VecDbl_assign_from
  procedure :: copy_to => swigf_VecDbl_copy_to
  procedure :: release => swigf_delete_VecDbl
  generic :: create => create__SWIG_0, create__SWIG_1, create__SWIG_2
  generic :: resize => resize__SWIG_0, resize__SWIG_1
 end type

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
  function swigc_new_VecDbl__SWIG_0() &
     bind(C, name="swigc_new_VecDbl__SWIG_0") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR) :: fresult
  end function
  function swigc_new_VecDbl__SWIG_1(farg1) &
     bind(C, name="swigc_new_VecDbl__SWIG_1") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR) :: fresult
   integer(C_INT), intent(in) :: farg1
  end function
  function swigc_new_VecDbl__SWIG_2(farg1, farg2) &
     bind(C, name="swigc_new_VecDbl__SWIG_2") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR) :: fresult
   integer(C_INT), intent(in) :: farg1
   real(C_DOUBLE), intent(in) :: farg2
  end function
  function swigc_VecDbl_size(farg1) &
     bind(C, name="swigc_VecDbl_size") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT) :: fresult
   type(C_PTR), value :: farg1
  end function
  function swigc_VecDbl_capacity(farg1) &
     bind(C, name="swigc_VecDbl_capacity") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT) :: fresult
   type(C_PTR), value :: farg1
  end function
  function swigc_VecDbl_empty(farg1) &
     bind(C, name="swigc_VecDbl_empty") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   logical(C_BOOL) :: fresult
   type(C_PTR), value :: farg1
  end function
  subroutine swigc_VecDbl_clear(farg1) &
     bind(C, name="swigc_VecDbl_clear")
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR), value :: farg1
  end subroutine
  subroutine swigc_VecDbl_reserve(farg1, farg2) &
     bind(C, name="swigc_VecDbl_reserve")
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR), value :: farg1
   integer(C_INT), intent(in) :: farg2
  end subroutine
  subroutine swigc_VecDbl_resize__SWIG_0(farg1, farg2) &
     bind(C, name="swigc_VecDbl_resize__SWIG_0")
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR), value :: farg1
   integer(C_INT), intent(in) :: farg2
  end subroutine
  subroutine swigc_VecDbl_resize__SWIG_1(farg1, farg2, farg3) &
     bind(C, name="swigc_VecDbl_resize__SWIG_1")
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR), value :: farg1
   integer(C_INT), intent(in) :: farg2
   real(C_DOUBLE), intent(in) :: farg3
  end subroutine
  subroutine swigc_VecDbl_push_back(farg1, farg2) &
     bind(C, name="swigc_VecDbl_push_back")
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR), value :: farg1
   real(C_DOUBLE), intent(in) :: farg2
  end subroutine
  function swigc_VecDbl_front(farg1) &
     bind(C, name="swigc_VecDbl_front") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE) :: fresult
   type(C_PTR), value :: farg1
  end function
  function swigc_VecDbl_back(farg1) &
     bind(C, name="swigc_VecDbl_back") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE) :: fresult
   type(C_PTR), value :: farg1
  end function
  subroutine swigc_VecDbl_set(farg1, farg2, farg3) &
     bind(C, name="swigc_VecDbl_set")
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR), value :: farg1
   integer(C_INT), intent(in) :: farg2
   real(C_DOUBLE), intent(in) :: farg3
  end subroutine
  function swigc_VecDbl_get(farg1, farg2) &
     bind(C, name="swigc_VecDbl_get") &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE) :: fresult
   type(C_PTR), value :: farg1
   integer(C_INT), intent(in) :: farg2
  end function
  subroutine swigc_VecDbl_assign_from(farg1, farg2, farg3) &
     bind(C, name="swigc_VecDbl_assign_from")
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR), value :: farg1
   real(C_DOUBLE), dimension(*), intent(in) :: farg2
   integer(C_INT), intent(in) :: farg3
  end subroutine
  subroutine swigc_VecDbl_copy_to(farg1, farg2, farg3) &
     bind(C, name="swigc_VecDbl_copy_to")
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR), value :: farg1
   real(C_DOUBLE), dimension(*), intent(inout) :: farg2
   integer(C_INT), intent(in) :: farg3
  end subroutine
  subroutine swigc_delete_VecDbl(farg1) &
     bind(C, name="swigc_delete_VecDbl")
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR), value :: farg1
  end subroutine
  subroutine swigc_print_vecdbl(farg1) &
     bind(C, name="swigc_print_vecdbl")
   use, intrinsic :: ISO_C_BINDING
   type(C_PTR), value :: farg1
  end subroutine
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
  subroutine swigf_new_VecDbl__SWIG_0(self)
   use, intrinsic :: ISO_C_BINDING
   class(VecDbl) :: self
   if (c_associated(self%ptr)) call self%release()
   self%ptr = swigc_new_VecDbl__SWIG_0()
   self%own = .true.
  end subroutine
  subroutine swigf_new_VecDbl__SWIG_1(self, count)
   use, intrinsic :: ISO_C_BINDING
   class(VecDbl) :: self
   integer(C_INT), intent(in) :: count
   if (c_associated(self%ptr)) call self%release()
   self%ptr = swigc_new_VecDbl__SWIG_1(count)
   self%own = .true.
  end subroutine
  subroutine swigf_new_VecDbl__SWIG_2(self, count, v)
   use, intrinsic :: ISO_C_BINDING
   class(VecDbl) :: self
   integer(C_INT), intent(in) :: count
   real(C_DOUBLE), intent(in) :: v
   if (c_associated(self%ptr)) call self%release()
   self%ptr = swigc_new_VecDbl__SWIG_2(count, v)
   self%own = .true.
  end subroutine
  function swigf_VecDbl_size(self) &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT) :: fresult
   class(VecDbl) :: self
   fresult = swigc_VecDbl_size(self%ptr)
  end function
  function swigf_VecDbl_capacity(self) &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   integer(C_INT) :: fresult
   class(VecDbl) :: self
   fresult = swigc_VecDbl_capacity(self%ptr)
  end function
  function swigf_VecDbl_empty(self) &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   logical(C_BOOL) :: fresult
   class(VecDbl) :: self
   fresult = swigc_VecDbl_empty(self%ptr)
  end function
  subroutine swigf_VecDbl_clear(self)
   use, intrinsic :: ISO_C_BINDING
   class(VecDbl) :: self
   call swigc_VecDbl_clear(self%ptr)
  end subroutine
  subroutine swigf_VecDbl_reserve(self, count)
   use, intrinsic :: ISO_C_BINDING
   class(VecDbl) :: self
   integer(C_INT), intent(in) :: count
   call swigc_VecDbl_reserve(self%ptr, count)
  end subroutine
  subroutine swigf_VecDbl_resize__SWIG_0(self, count)
   use, intrinsic :: ISO_C_BINDING
   class(VecDbl) :: self
   integer(C_INT), intent(in) :: count
   call swigc_VecDbl_resize__SWIG_0(self%ptr, count)
  end subroutine
  subroutine swigf_VecDbl_resize__SWIG_1(self, count, v)
   use, intrinsic :: ISO_C_BINDING
   class(VecDbl) :: self
   integer(C_INT), intent(in) :: count
   real(C_DOUBLE), intent(in) :: v
   call swigc_VecDbl_resize__SWIG_1(self%ptr, count, v)
  end subroutine
  subroutine swigf_VecDbl_push_back(self, v)
   use, intrinsic :: ISO_C_BINDING
   class(VecDbl) :: self
   real(C_DOUBLE), intent(in) :: v
   call swigc_VecDbl_push_back(self%ptr, v)
  end subroutine
  function swigf_VecDbl_front(self) &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE) :: fresult
   class(VecDbl) :: self
   fresult = swigc_VecDbl_front(self%ptr)
  end function
  function swigf_VecDbl_back(self) &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE) :: fresult
   class(VecDbl) :: self
   fresult = swigc_VecDbl_back(self%ptr)
  end function
  subroutine swigf_VecDbl_set(self, index, v)
   use, intrinsic :: ISO_C_BINDING
   class(VecDbl) :: self
   integer(C_INT), intent(in) :: index
   real(C_DOUBLE), intent(in) :: v
   call swigc_VecDbl_set(self%ptr, index, v)
  end subroutine
  function swigf_VecDbl_get(self, index) &
     result(fresult)
   use, intrinsic :: ISO_C_BINDING
   real(C_DOUBLE) :: fresult
   class(VecDbl) :: self
   integer(C_INT), intent(in) :: index
   fresult = swigc_VecDbl_get(self%ptr, index)
  end function
  subroutine swigf_VecDbl_assign_from(self, arr)
   use, intrinsic :: ISO_C_BINDING
   class(VecDbl) :: self
   real(C_DOUBLE), dimension(:), intent(in) :: arr
   call swigc_VecDbl_assign_from(self%ptr, arr, size(arr))
  end subroutine
  subroutine swigf_VecDbl_copy_to(self, arr)
   use, intrinsic :: ISO_C_BINDING
   class(VecDbl) :: self
   real(C_DOUBLE), dimension(:), intent(inout) :: arr
   call swigc_VecDbl_copy_to(self%ptr, arr, size(arr))
  end subroutine
  subroutine swigf_delete_VecDbl(self)
   use, intrinsic :: ISO_C_BINDING
   class(VecDbl) :: self
   if (self%own) then
    call swigc_delete_VecDbl(self%ptr)
    self%own = .false.
   end if
   self%ptr = C_NULL_PTR
  end subroutine
  subroutine print_vecdbl(v)
   use, intrinsic :: ISO_C_BINDING
   class(VecDbl) :: v
   call swigc_print_vecdbl(v%ptr)
  end subroutine
end module stdvec
