!-----------------------------------------------------------------------------!
! \file   openacc/test_thrustacc.f90
! \author Seth R Johnson
! \date   Sat Mar 24 18:16:24 2018
! \note   Copyright (c) 2018 Oak Ridge National Laboratory, UT-Battelle, LLC.
!-----------------------------------------------------------------------------!

program test_thrustacc
  use thrustacc
  implicit none
  integer, parameter :: n = 32768
  integer :: i
  integer :: failures = 0
  real, dimension(:), allocatable :: a
  real :: mean

  ! Generate N uniform numbers on [0,1)
  allocate(a(n))
  call RANDOM_NUMBER(a)

  !$acc data copyin(a) copyout(a)
    !$acc kernels
      do i = 1,n
        a(i) = a(i) * 10
      end do
    !$acc end kernels
    call sort(a)
  !$acc end data

  ! Check data ordering on host
  do i = 1, n-1
    if (a(i) > a(i+1)) failures = failures + 1
  end do

  ! Mean should be 
  mean = sum(a)
  mean = mean / real(n)
  write(*,*) failures, "failures; mean=", mean

end program

!-----------------------------------------------------------------------------!
! end of openacc/test_thrustacc.f90
!-----------------------------------------------------------------------------!
! set : ts=2 sw=2 :
