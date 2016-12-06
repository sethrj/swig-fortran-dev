!-----------------------------------------------------------------------------!
! \file   thinvec/test.f90
! \author Seth R Johnson
! \date   Fri Dec 02 15:53:28 2016
! \brief  test module
! \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
!-----------------------------------------------------------------------------!

program main
    use ISO_FORTRAN_ENV
    use thinvec, only : print_vec, Vec => ThinVecDbl
    implicit none
    integer :: i
    type(Vec) :: v
    real(kind=8), dimension(3) :: dummy_data
    real(kind=8), allocatable, dimension(:) :: obtained

    ! This should be a null-op since the underlying pointer is initialized to
    ! null
    call v%release()
    
    write(0, *) "Constructing..."
    call v%create()
    write(0, *) "Sizing..."
    call v%resize(4)
    call print_vec(v)
    write(0, *) "Resizing with fill..."
    call v%resize_fill(10, 1.5d0)

    write(0, *) "Setting"
    do i = 0, 7
        call v%set(i, real(i) * 123.0d0)
    end do
    call print_vec(v)

    ! Pull data from the vector
    allocate(obtained(v%size()))
    obtained = -1.0d0
    call v%obtain(obtained)
    write(0, *) "Obtained ", size(obtained), "els:", obtained
    deallocate(obtained)

    ! Assign a vector
    do i = 1, 3
        dummy_data(i) = real(i) + 1.5d0
    end do
    write(0, *) "Assigning vector", dummy_data
    call v%ass(dummy_data)
    call print_vec(v)

    write(0, *) "Destroying..."
    call v%release()
end program

!-----------------------------------------------------------------------------!
! end of thinvec/test.f90
!-----------------------------------------------------------------------------!
