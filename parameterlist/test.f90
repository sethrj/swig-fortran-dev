!-----------------------------------------------------------------------------!
! \file   parameterlist/test.f90
! \author Seth R Johnson
! \date   Tue Dec 06 18:15:21 2016
! \brief  test module
! \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
!-----------------------------------------------------------------------------!

program main
    use ISO_FORTRAN_ENV

    call test_plist()

contains
subroutine test_plist()
    use teuchos
    implicit none
    type(ParameterList) :: plist, sublist
    integer :: val

    write(0, *) "Constructing..."
    call plist%create("myname")
    call plist%set("myint", 4)
    call plist%set("mydouble", 4.0d0)

    call plist%get("myint", val)
    write(0, *) "Retrieved ", val

    call sublist%create("sublist")
    call sublist%set("anotherval", 4.0d0)
    call sublist%set("stringval", "some string!")

    call plist%set("sublist", sublist)
    call sublist%release()

    write(0, *) "Printing"
    call plist%print()
    call plist%release()
end subroutine

end program

!-----------------------------------------------------------------------------!
! end of parameterlist/test.f90
!-----------------------------------------------------------------------------!
