! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module except
 use, intrinsic :: ISO_C_BINDING
 implicit none
 private

 ! PUBLIC METHODS AND TYPES

type, bind(C) :: SwigArrayWrapper
  type(C_PTR), public :: data = C_NULL_PTR
  integer(C_SIZE_T), public :: size = 0
end type

 public :: get_serr_test
 public :: do_it
 public :: do_it_again

 ! PARAMETERS

 integer(C_INT), bind(C), public :: ierr_test


 ! WRAPPER DECLARATIONS
 interface
function swigc_get_serr_test() &
bind(C, name="swigc_get_serr_test") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigArrayWrapper
type(SwigArrayWrapper) :: fresult
end function

subroutine swigc_do_it(farg1) &
bind(C, name="swigc_do_it")
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
end subroutine

subroutine swigc_do_it_again(farg1) &
bind(C, name="swigc_do_it_again")
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
end subroutine

 end interface


contains
 ! FORTRAN PROXY CODE

subroutine SWIG_chararray_to_string(wrap, string)
  use, intrinsic :: ISO_C_BINDING
  type(SwigArrayWrapper), intent(IN) :: wrap
  character(kind=C_CHAR, len=:), allocatable, intent(OUT) :: string
  character(kind=C_CHAR), dimension(:), pointer :: chars
  integer(kind=C_SIZE_T) :: i
  call c_f_pointer(wrap%data, chars, [wrap%size])
  allocate(character(kind=C_CHAR, len=wrap%size) :: string)
  do i=1, wrap%size
    string(i:i) = chars(i)
  enddo
end subroutine

function get_serr_test() &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
character(kind=C_CHAR, len=:), allocatable :: swig_result
type(SwigArrayWrapper) :: fresult 

fresult = swigc_get_serr_test()
call SWIG_chararray_to_string(fresult, swig_result)
end function

subroutine do_it(i)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: i
integer(C_INT) :: farg1 

farg1 = i
call swigc_do_it(farg1)
end subroutine

subroutine do_it_again(i)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: i
integer(C_INT) :: farg1 

farg1 = i
call swigc_do_it_again(farg1)
end subroutine


end module
