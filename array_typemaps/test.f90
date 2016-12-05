!-----------------------------------------------------------------------------!
! \file   array_typemaps/test.f90
! \author Seth R Johnson
! \date   Sun Dec 04 20:16:01 2016
! \brief  test module
! \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
!-----------------------------------------------------------------------------!
program main
    use ISO_FORTRAN_ENV
    use code, only : print_array
    implicit none
    real(kind=8), dimension(9) :: arr
    integer :: i

    do i = 1,size(arr)
        arr(i) = real(i) + 0.5
    end do

    write(0, *) "Printing array..."
    call print_array(arr)
    write(0, *) "... printed"
end program

!-----------------------------------------------------------------------------!
! end of array_typemaps/test.f90
!-----------------------------------------------------------------------------!
