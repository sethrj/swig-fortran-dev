module vecmod_I
 use, intrinsic :: ISO_C_BINDING
 interface

  function new_Vec_Dbl(farg1) &
    result(fresult) &
    bind(C, name="_wrap_new_Vec_Dbl")
   use, intrinsic :: ISO_C_BINDING
   implicit none
   type(C_PTR) :: fresult
   integer(C_INT) :: farg1
  end function

  subroutine delete_Vec_Dbl(this) &
    bind(C, name="_wrap_delete_Vec_Dbl")
   use, intrinsic :: ISO_C_BINDING
   implicit none
   type(C_PTR) :: this
  end subroutine

  function Vec_Dbl_at(this, farg1) &
    result(fresult) &
    bind(C, name="_wrap_Vec_Dbl_at")
   use, intrinsic :: ISO_C_BINDING
   implicit none
   real(C_DOUBLE) :: fresult
   type(C_PTR) :: this
   integer(C_INT) :: farg1
  end function
  
  subroutine Vec_Dbl_set(this, farg1, farg2) &
    bind(C, name="_wrap_Vec_Dbl_set")
   use, intrinsic :: ISO_C_BINDING
   implicit none
   type(C_PTR) :: this
   integer(C_INT) :: farg1
   real(C_DOUBLE) :: farg2
  end subroutine
  
 end interface
end module

module vecmod
 use, intrinsic :: ISO_C_BINDING
 use vecmod_I
 implicit none
 
 type Vec_Dbl
  type(C_PTR),private :: ptr = C_NULL_PTR
 contains
  ! DESTRUCTORS AND METHODS
  procedure :: set
  ! procedure :: at
  !  procedure :: get
  !  procedure :: set
  !  procedure :: size
 end type

 ! CONSTRUCTORS
 interface Vec_Dbl
  procedure :: new
  !final :: delete
  ! procedure :: at
  !procedure :: construct_from_array
 end interface

contains
! subroutine at(this, v) &
!   bind(C, name="wrap_Vec_Dbl_at")
!  use,intrinsic :: ISO_C_BINDING
!  implicit none
!  integer(C_INT) :: farg1
!  return _wrap_Vec_Dbl_at(v)
! end subroutine

 ! Constructors
 function new(farg1) &
   result(this)
  type(Vec_Dbl) :: this
  integer(C_INT) :: farg1
  this%ptr = new_Vec_Dbl(farg1)
 end function

 subroutine set(this, farg1, farg2)
  use,intrinsic :: ISO_C_BINDING
  implicit none
  class(Vec_Dbl) :: this
  integer(C_INT) :: farg1
  real(C_DOUBLE) :: farg2
  call Vec_Dbl_set(this%ptr, farg1, farg2)
 end subroutine

 function at(this, farg1) &
   result(fresult)
  use,intrinsic :: ISO_C_BINDING
  implicit none
  class(Vec_Dbl) :: this
  integer(C_INT) :: farg1
  real(C_DOUBLE) :: fresult
  fresult = Vec_Dbl_at(this%ptr, farg1)
 end function

 ! Destructor
 subroutine delete(this)
  type(Vec_Dbl) :: this
  call delete_Vec_Dbl(this%ptr)
 end subroutine

end module

program foo
 write(*,*) "Hello cruel world!"
 !use vecmod
 !type(Vec_Dbl) :: bar

 !bar = Vec_Dbl(5)

 !! Really runs 'call increment(bar,2)'
 !call bar%increment(2)
end program
