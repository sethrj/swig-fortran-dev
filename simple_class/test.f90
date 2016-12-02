!-----------------------------------------------------------------------------!
! \file   simple_class/test.f90
! \author Seth R Johnson
! \date   Thu Dec 01 15:07:28 2016
! \brief  test module
! \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
!-----------------------------------------------------------------------------!

program main
    use ISO_FORTRAN_ENV
    use simple, SimpleClass => SimpleClass
    implicit none

    type(SimpleClass) :: c
    write(0, *) "Constructing..."
    call c%ctor()
    write(0, *) "Setting..."
    call c%set(123.0d0)
    write(0, *) "Current value ", c%get()
    call c%double_it()
    write(0, *) "Current value ", c%get()
    write(0, *) "Quadrupled: ", c%get_multiplied(4)
    call print_value(c)
    write(0, *) "Destroying..."
    call c%dtor()
end program

!-----------------------------------------------------------------------------!
! end of simple_class/test.f90
!-----------------------------------------------------------------------------!
