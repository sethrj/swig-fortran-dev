!-----------------------------------------------------------------------------!
! \file   spdemo/test.f90
! \author Seth R Johnson
! \date   Tue Dec 06 15:37:51 2016
! \brief  test module
! \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
!-----------------------------------------------------------------------------!

module ptrtest
  use, intrinsic :: ISO_C_BINDING
  implicit none
  public

  type :: Foo
    type(C_PTR) :: ptr = C_NULL_PTR
  end type

  type :: Bar
    type(C_PTR) :: ptr = C_NULL_PTR
  contains
    final  :: final_Bar
  end type

contains
  recursive subroutine final_Bar(self)
    !PURE ELEMENTAL subroutine final_Bar(self)
    !subroutine final_Bar(self)
    use, intrinsic :: ISO_C_BINDING
    type(Bar), intent(inout) :: self
    write(*,"(a,Z16)") "Finally: 0x", self%ptr
  end subroutine
end module

program main
  implicit none

  call test_spcopy()
contains

  subroutine test_spcopy()
    use ptrtest, only : Foo, Bar
    use, intrinsic :: ISO_C_BINDING
    implicit none
    type(Foo) :: f1
    type(Foo) :: f2
    type(Bar) :: b1
    type(Bar) :: b2
    type(Bar) :: b3

    write(*,*) "Associated?", c_associated(f1%ptr)
    write(*,*) "Associated?", c_associated(f2%ptr)
    write(*,*) "Associated?", c_associated(b1%ptr)
    write(*,*) "Associated?", c_associated(b2%ptr)
    write(*,*) "Associated?", c_associated(b3%ptr)
  end subroutine

end program

!-----------------------------------------------------------------------------!
! end of spdemo/test.f90
!-----------------------------------------------------------------------------!
