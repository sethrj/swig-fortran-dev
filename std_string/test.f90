!-----------------------------------------------------------------------------!
! \file   std_string/test.f90
! \author Seth R Johnson
! \date   Mon Dec 05 18:31:18 2016
! \brief  test module
! \note   Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
!-----------------------------------------------------------------------------!

program main
    use ISO_FORTRAN_ENV
    use, intrinsic :: ISO_C_BINDING
    use stdstr, only : print_str, halve_str, string
    implicit none
    character(len=16) :: fixedlen
    character(len=:), allocatable :: deferredlen
    character(len=:), allocatable :: varlen
    integer :: i
    type(string) :: s

    write(0, *) "Constructing..."
    call s%create()
    write(0, *) "Size:", s%size()

    fixedlen = "fixed"
    call s%assign_from(fixedlen)
    write(0, *) "Assigned from fixed-length string:"
    call print_str(s)

    call s%assign_from(trim(fixedlen))
    write(0, *) "Assigned from trimmed string:"
    call print_str(s)

    deferredlen = "short string"
    call s%assign_from(deferredlen)
    write(0, *) "deferred-length string"
    call print_str(s)

    deferredlen = "deferred length string    "
    call s%assign_from(deferredlen)
    write(0, *) "deferred-length string with trailing spaces:"
    call print_str(s)

    ! Cut it in half and read it back out to varlen
    write(0, *) "Halving..."
    call halve_str(s)

    ! NOTE: for some reason you have to extract the size; it doesn't work as a
    ! function call
    i = s%size()
    write(0, *) "Allocating size ", i, "..."
    allocate(character(len=i)::varlen)
    write(0, *) "Allocated size", len(varlen)
    call s%copy_to(varlen)
    write(0, *) "Copied back to varlen string: '"//varlen//"'"
    deallocate(varlen)


    call halve_str(s)
    call halve_str(s)
    call s%copy_to(fixedlen)
    write(0, *) "Quarter-length string with auto-padding: '"//fixedlen//"'"
    write(0, *) "Destroying..."
    call s%release()

end program


!-----------------------------------------------------------------------------!
! end of std_string/test.f90
!-----------------------------------------------------------------------------!
