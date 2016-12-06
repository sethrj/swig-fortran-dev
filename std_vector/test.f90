!-----------------------------------------------------------------------------!
! \file   std_vector/test.f90
! \author Seth R Johnson
! \date   Mon Dec 05 09:05:31 2016
! \brief  test module
! \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
!-----------------------------------------------------------------------------!

program main
    use ISO_FORTRAN_ENV
    use, intrinsic :: ISO_C_BINDING
    use stdvec, only : print_vec => print_vecdbl, VecDbl
    implicit none
    type(VecDbl) :: v
    integer :: i
    real(C_DOUBLE), dimension(3) :: dummy_data
    real(C_DOUBLE), allocatable, dimension(:) :: obtained

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
    call v%copy_to(obtained)
    write(0, *) "Obtained ", size(obtained), "elements:", obtained

    ! Modify the data
    obtained = obtained - 5.0d0
    write(0, *) "Setting all"
    call v%assign_from(obtained)
    call print_vec(v)
    deallocate(obtained)

    ! Get a single element
    write(0, *) "Value at 3:", v%get(3)

    write(0, *) "Destroying..."
    call v%release()
end program

!-----------------------------------------------------------------------------!
! end of std_vector/test.f90
!-----------------------------------------------------------------------------!
