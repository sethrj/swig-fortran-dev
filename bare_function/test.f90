!-----------------------------------------------------------------------------!
! \file   swig-fortran/test.f90
! \author Seth R Johnson
! \date   Wed Nov 30 18:15:24 2016
! \brief  test module
! \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
!-----------------------------------------------------------------------------!

program main
    use ISO_FORTRAN_ENV
    use bare
    implicit none
    real(kind=8) :: temp

    call set_something(2, 200.0d0)
    call set_something(1, 10.0d0)
    call set_something(0, 1.0d0)
    write(0, *) "Got ", get_something(0)
    write(0, *) "Got ", get_something(1)

    call get_something_ptr(2, temp)
    write(0, *) "Got ", temp
    call get_something_ref(1, temp)
    write(0, *) "Got ", temp
end program

!-----------------------------------------------------------------------------!
! end of swig-fortran/test.f90
!-----------------------------------------------------------------------------!
