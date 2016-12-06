!-----------------------------------------------------------------------------!
! \file   simple_class/test.f90
! \author Seth R Johnson
! \date   Thu Dec 01 15:07:28 2016
! \brief  test module
! \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
!-----------------------------------------------------------------------------!

program main
    use ISO_FORTRAN_ENV
    use simple, SimpleClass => SimpleClassDerp
    implicit none

    type(SimpleClass) :: orig
    type(SimpleClass) :: copy
    write(0, *) "Constructing..."
    call orig%create()
    ! write(0, "(a, z16)") "Orig:", orig%ptr, "Copy:", copy%ptr
    write(0, *) "Setting..."
    call orig%set(123.0d0)
    write(0, *) "Current value ", orig%get()
    call orig%double_it()
    write(0, *) "Current value ", orig%get()
    write(0, *) "Quadrupled: ", orig%get_multiplied(4)
    call print_value(orig)


    write(0, *) "Copying..."
    copy = orig
    ! write(0, "(a, z16)") "Orig:", orig%ptr, "Copy:", copy%ptr
    call print_value(copy)
    write(0, *) "Destroying..."
    call orig%release()
    ! write(0, *) "Double-deleting..."
    ! call copy%release()
end program

!-----------------------------------------------------------------------------!
! end of simple_class/test.f90
!-----------------------------------------------------------------------------!
