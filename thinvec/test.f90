!-----------------------------------------------------------------------------!
! \file   thinvec/test.f90
! \author Seth R Johnson
! \date   Fri Dec 02 15:53:28 2016
! \brief  test module
! \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
!-----------------------------------------------------------------------------!

program main
    use ISO_FORTRAN_ENV
    use thinvec, ThinVecDbl => Vec, print_vec
    implicit none
    integer :: i
    type(Vec) :: v

    write(0, *) "Constructing..."
    call v%ctor()
    write(0, *) "Sizing..."
    call v%resize(16)
    call print_vec(v)
    write(0, *) "Resizing with fill..."
    call v%resize_fill(8, 1.5d0)

    write(0, *) "Setting"
    do i = 0, 7
        call v%set(4, real(i) * 123.0d0)
    end do
    call print_vec(v)
    write(0, *) "Destroying..."
    call v%dtor()
end program

!-----------------------------------------------------------------------------!
! end of thinvec/test.f90
!-----------------------------------------------------------------------------!
