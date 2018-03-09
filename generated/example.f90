! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.0
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.
module example
 use, intrinsic :: ISO_C_BINDING
 implicit none
 private

 ! PUBLIC METHODS AND TYPES

type, bind(C) :: SwigArrayWrapper
  type(C_PTR), public :: data = C_NULL_PTR
  integer(C_SIZE_T), public :: size = 0
end type

 public :: get_serr
 public :: Shape

 enum, bind(c)
  enumerator :: SwigMemState = -1
  enumerator :: SWIG_NULL = 0
  enumerator :: SWIG_OWN
  enumerator :: SWIG_MOVE
  enumerator :: SWIG_REF
  enumerator :: SWIG_CREF
 end enum


type, bind(C) :: SwigClassWrapper
  type(C_PTR), public :: ptr = C_NULL_PTR
  integer(C_INT), public :: mem = SWIG_NULL
end type

 public :: Circle
 public :: Square
 public :: Sphere
 public :: surface_to_volume

 ! PARAMETERS

 integer(C_INT), bind(C), public :: ierr


 ! TYPES
 type :: Shape
  ! These should be treated as PROTECTED data
  type(SwigClassWrapper), public :: swigdata
 contains
  procedure, nopass :: set_nshapes => set_Shape_nshapes
  procedure, nopass :: get_nshapes => get_Shape_nshapes
  procedure :: set_x => set_Shape_x
  procedure :: get_x => get_Shape_x
  procedure :: set_y => set_Shape_y
  procedure :: get_y => get_Shape_y
  procedure :: release => delete_Shape
  procedure :: area => swigf_Shape_area
  procedure :: perimeter => swigf_Shape_perimeter
  procedure :: kind => swigf_Shape_kind
  procedure, private :: swigf_assignment_Shape
  generic :: assignment(=) => swigf_assignment_Shape
 end type Shape
 type, extends(Shape) :: Circle
 contains
  procedure :: area => swigf_Circle_area
  procedure :: perimeter => swigf_Circle_perimeter
  procedure :: kind => swigf_Circle_kind
  procedure :: release => delete_Circle
  procedure, private :: swigf_assignment_Circle
  generic :: assignment(=) => swigf_assignment_Circle
 end type Circle
 interface Circle
  procedure new_Circle
 end interface
 type, extends(Shape) :: Square
 contains
  procedure :: area => swigf_Square_area
  procedure :: perimeter => swigf_Square_perimeter
  procedure :: kind => swigf_Square_kind
  procedure :: release => delete_Square
  procedure, private :: swigf_assignment_Square
  generic :: assignment(=) => swigf_assignment_Square
 end type Square
 interface Square
  procedure new_Square
 end interface
 type :: Sphere
  ! These should be treated as PROTECTED data
  type(SwigClassWrapper), public :: swigdata
 contains
  procedure :: volume => swigf_Sphere_volume
  procedure :: kind => swigf_Sphere_kind
  procedure :: release => delete_Sphere
  procedure, private :: swigf_assignment_Sphere
  generic :: assignment(=) => swigf_assignment_Sphere
 end type Sphere
 interface Sphere
  procedure new_Sphere
 end interface


 ! WRAPPER DECLARATIONS
 interface
function swigc_get_serr() &
bind(C, name="swigc_get_serr") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigArrayWrapper
type(SwigArrayWrapper) :: fresult
end function

subroutine swigc_set_Shape_nshapes(farg1) &
bind(C, name="swigc_set_Shape_nshapes")
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: farg1
end subroutine

function swigc_get_Shape_nshapes() &
bind(C, name="swigc_get_Shape_nshapes") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: fresult
end function

subroutine swigc_set_Shape_x(farg1, farg2) &
bind(C, name="swigc_set_Shape_x")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
real(C_FLOAT), intent(in) :: farg2
end subroutine

function swigc_get_Shape_x(farg1) &
bind(C, name="swigc_get_Shape_x") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
real(C_FLOAT) :: fresult
end function

subroutine swigc_set_Shape_y(farg1, farg2) &
bind(C, name="swigc_set_Shape_y")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
real(C_FLOAT), intent(in) :: farg2
end subroutine

function swigc_get_Shape_y(farg1) &
bind(C, name="swigc_get_Shape_y") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
real(C_FLOAT) :: fresult
end function

subroutine swigc_delete_Shape(farg1) &
bind(C, name="swigc_delete_Shape")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
end subroutine

function swigc_Shape_area(farg1) &
bind(C, name="swigc_Shape_area") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
real(C_FLOAT) :: fresult
end function

function swigc_Shape_perimeter(farg1) &
bind(C, name="swigc_Shape_perimeter") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
real(C_FLOAT) :: fresult
end function

function swigc_Shape_kind(farg1) &
bind(C, name="swigc_Shape_kind") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigArrayWrapper
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
type(SwigArrayWrapper) :: fresult
end function


subroutine SWIG_free(ptr) &
  bind(C, name="free")
 use, intrinsic :: ISO_C_BINDING
 type(C_PTR), value :: ptr
end subroutine

  subroutine swigc_assignment_Shape(self, other) &
     bind(C, name="swigc_assignment_Shape")
   use, intrinsic :: ISO_C_BINDING
   import :: SwigClassWrapper
   type(SwigClassWrapper), intent(inout) :: self
   type(SwigClassWrapper), intent(in) :: other
  end subroutine
function swigc_new_Circle(farg1) &
bind(C, name="swigc_new_Circle") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
real(C_FLOAT), intent(in) :: farg1
type(SwigClassWrapper) :: fresult
end function

function swigc_Circle_area(farg1) &
bind(C, name="swigc_Circle_area") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
real(C_FLOAT) :: fresult
end function

function swigc_Circle_perimeter(farg1) &
bind(C, name="swigc_Circle_perimeter") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
real(C_FLOAT) :: fresult
end function

function swigc_Circle_kind(farg1) &
bind(C, name="swigc_Circle_kind") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigArrayWrapper
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
type(SwigArrayWrapper) :: fresult
end function

subroutine swigc_delete_Circle(farg1) &
bind(C, name="swigc_delete_Circle")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
end subroutine

  subroutine swigc_assignment_Circle(self, other) &
     bind(C, name="swigc_assignment_Circle")
   use, intrinsic :: ISO_C_BINDING
   import :: SwigClassWrapper
   type(SwigClassWrapper), intent(inout) :: self
   type(SwigClassWrapper), intent(in) :: other
  end subroutine
function swigc_new_Square(farg1) &
bind(C, name="swigc_new_Square") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
real(C_FLOAT), intent(in) :: farg1
type(SwigClassWrapper) :: fresult
end function

function swigc_Square_area(farg1) &
bind(C, name="swigc_Square_area") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
real(C_FLOAT) :: fresult
end function

function swigc_Square_perimeter(farg1) &
bind(C, name="swigc_Square_perimeter") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
real(C_FLOAT) :: fresult
end function

function swigc_Square_kind(farg1) &
bind(C, name="swigc_Square_kind") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigArrayWrapper
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
type(SwigArrayWrapper) :: fresult
end function

subroutine swigc_delete_Square(farg1) &
bind(C, name="swigc_delete_Square")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
end subroutine

  subroutine swigc_assignment_Square(self, other) &
     bind(C, name="swigc_assignment_Square")
   use, intrinsic :: ISO_C_BINDING
   import :: SwigClassWrapper
   type(SwigClassWrapper), intent(inout) :: self
   type(SwigClassWrapper), intent(in) :: other
  end subroutine
function swigc_new_Sphere(farg1) &
bind(C, name="swigc_new_Sphere") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
real(C_FLOAT), intent(in) :: farg1
type(SwigClassWrapper) :: fresult
end function

function swigc_Sphere_volume(farg1) &
bind(C, name="swigc_Sphere_volume") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
real(C_FLOAT) :: fresult
end function

function swigc_Sphere_kind(farg1) &
bind(C, name="swigc_Sphere_kind") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigArrayWrapper
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
type(SwigArrayWrapper) :: fresult
end function

subroutine swigc_delete_Sphere(farg1) &
bind(C, name="swigc_delete_Sphere")
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
end subroutine

  subroutine swigc_assignment_Sphere(self, other) &
     bind(C, name="swigc_assignment_Sphere")
   use, intrinsic :: ISO_C_BINDING
   import :: SwigClassWrapper
   type(SwigClassWrapper), intent(inout) :: self
   type(SwigClassWrapper), intent(in) :: other
  end subroutine
function swigc_surface_to_volume(farg1) &
bind(C, name="swigc_surface_to_volume") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: SwigClassWrapper
type(SwigClassWrapper) :: farg1
real(C_FLOAT) :: fresult
end function

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

function get_serr() &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
character(kind=C_CHAR, len=:), allocatable :: swig_result
type(SwigArrayWrapper) :: fresult 

fresult = swigc_get_serr()
call SWIG_chararray_to_string(fresult, swig_result)
end function

subroutine set_Shape_nshapes(value0)
use, intrinsic :: ISO_C_BINDING
integer(C_INT), intent(in) :: value0
integer(C_INT) :: farg1 

farg1 = value0
call swigc_set_Shape_nshapes(farg1)
end subroutine

function get_Shape_nshapes() &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT) :: swig_result
integer(C_INT) :: fresult 

fresult = swigc_get_Shape_nshapes()
swig_result = fresult
end function

subroutine set_Shape_x(self, x)
use, intrinsic :: ISO_C_BINDING
class(Shape), intent(inout) :: self
real(C_FLOAT), intent(in) :: x
type(SwigClassWrapper) :: farg1 
real(C_FLOAT) :: farg2 

farg1 = self%swigdata
farg2 = x
call swigc_set_Shape_x(farg1, farg2)
end subroutine

function get_Shape_x(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_FLOAT) :: swig_result
class(Shape), intent(inout) :: self
real(C_FLOAT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_get_Shape_x(farg1)
swig_result = fresult
end function

subroutine set_Shape_y(self, y)
use, intrinsic :: ISO_C_BINDING
class(Shape), intent(inout) :: self
real(C_FLOAT), intent(in) :: y
type(SwigClassWrapper) :: farg1 
real(C_FLOAT) :: farg2 

farg1 = self%swigdata
farg2 = y
call swigc_set_Shape_y(farg1, farg2)
end subroutine

function get_Shape_y(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_FLOAT) :: swig_result
class(Shape), intent(inout) :: self
real(C_FLOAT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_get_Shape_y(farg1)
swig_result = fresult
end function

subroutine delete_Shape(self)
use, intrinsic :: ISO_C_BINDING
class(Shape), intent(inout) :: self
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
if (self%swigdata%mem == SWIG_OWN) then
call swigc_delete_Shape(farg1)
end if
self%swigdata%ptr = C_NULL_PTR
self%swigdata%mem = SWIG_NULL
end subroutine

function swigf_Shape_area(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_FLOAT) :: swig_result
class(Shape), intent(in) :: self
real(C_FLOAT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Shape_area(farg1)
swig_result = fresult
end function

function swigf_Shape_perimeter(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_FLOAT) :: swig_result
class(Shape), intent(in) :: self
real(C_FLOAT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Shape_perimeter(farg1)
swig_result = fresult
end function

function swigf_Shape_kind(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
character(kind=C_CHAR, len=:), allocatable :: swig_result
class(Shape), intent(in) :: self
type(SwigArrayWrapper) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Shape_kind(farg1)
call SWIG_chararray_to_string(fresult, swig_result)
if (.false.) call SWIG_free(fresult%data)
end function

  subroutine swigf_assignment_Shape(self, other)
   use, intrinsic :: ISO_C_BINDING
   class(Shape), intent(inout) :: self
   type(Shape), intent(in) :: other
   call swigc_assignment_Shape(self%swigdata, other%swigdata)
  end subroutine
function new_Circle(r) &
result(self)
use, intrinsic :: ISO_C_BINDING
type(Circle) :: self
real(C_FLOAT), intent(in) :: r
type(SwigClassWrapper) :: fresult 
real(C_FLOAT) :: farg1 

farg1 = r
fresult = swigc_new_Circle(farg1)
self%swigdata = fresult
end function

function swigf_Circle_area(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_FLOAT) :: swig_result
class(Circle), intent(in) :: self
real(C_FLOAT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Circle_area(farg1)
swig_result = fresult
end function

function swigf_Circle_perimeter(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_FLOAT) :: swig_result
class(Circle), intent(in) :: self
real(C_FLOAT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Circle_perimeter(farg1)
swig_result = fresult
end function

function swigf_Circle_kind(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
character(kind=C_CHAR, len=:), allocatable :: swig_result
class(Circle), intent(in) :: self
type(SwigArrayWrapper) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Circle_kind(farg1)
call SWIG_chararray_to_string(fresult, swig_result)
if (.false.) call SWIG_free(fresult%data)
end function

subroutine delete_Circle(self)
use, intrinsic :: ISO_C_BINDING
class(Circle), intent(inout) :: self
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
if (self%swigdata%mem == SWIG_OWN) then
call swigc_delete_Circle(farg1)
end if
self%swigdata%ptr = C_NULL_PTR
self%swigdata%mem = SWIG_NULL
end subroutine

  subroutine swigf_assignment_Circle(self, other)
   use, intrinsic :: ISO_C_BINDING
   class(Circle), intent(inout) :: self
   type(Circle), intent(in) :: other
   call swigc_assignment_Circle(self%swigdata, other%swigdata)
  end subroutine
function new_Square(w) &
result(self)
use, intrinsic :: ISO_C_BINDING
type(Square) :: self
real(C_FLOAT), intent(in) :: w
type(SwigClassWrapper) :: fresult 
real(C_FLOAT) :: farg1 

farg1 = w
fresult = swigc_new_Square(farg1)
self%swigdata = fresult
end function

function swigf_Square_area(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_FLOAT) :: swig_result
class(Square), intent(in) :: self
real(C_FLOAT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Square_area(farg1)
swig_result = fresult
end function

function swigf_Square_perimeter(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_FLOAT) :: swig_result
class(Square), intent(in) :: self
real(C_FLOAT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Square_perimeter(farg1)
swig_result = fresult
end function

function swigf_Square_kind(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
character(kind=C_CHAR, len=:), allocatable :: swig_result
class(Square), intent(in) :: self
type(SwigArrayWrapper) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Square_kind(farg1)
call SWIG_chararray_to_string(fresult, swig_result)
if (.false.) call SWIG_free(fresult%data)
end function

subroutine delete_Square(self)
use, intrinsic :: ISO_C_BINDING
class(Square), intent(inout) :: self
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
if (self%swigdata%mem == SWIG_OWN) then
call swigc_delete_Square(farg1)
end if
self%swigdata%ptr = C_NULL_PTR
self%swigdata%mem = SWIG_NULL
end subroutine

  subroutine swigf_assignment_Square(self, other)
   use, intrinsic :: ISO_C_BINDING
   class(Square), intent(inout) :: self
   type(Square), intent(in) :: other
   call swigc_assignment_Square(self%swigdata, other%swigdata)
  end subroutine
function new_Sphere(r) &
result(self)
use, intrinsic :: ISO_C_BINDING
type(Sphere) :: self
real(C_FLOAT), intent(in) :: r
type(SwigClassWrapper) :: fresult 
real(C_FLOAT) :: farg1 

farg1 = r
fresult = swigc_new_Sphere(farg1)
self%swigdata = fresult
end function

function swigf_Sphere_volume(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_FLOAT) :: swig_result
class(Sphere), intent(in) :: self
real(C_FLOAT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Sphere_volume(farg1)
swig_result = fresult
end function

function swigf_Sphere_kind(self) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
character(kind=C_CHAR, len=:), allocatable :: swig_result
class(Sphere), intent(in) :: self
type(SwigArrayWrapper) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
fresult = swigc_Sphere_kind(farg1)
call SWIG_chararray_to_string(fresult, swig_result)
if (.false.) call SWIG_free(fresult%data)
end function

subroutine delete_Sphere(self)
use, intrinsic :: ISO_C_BINDING
class(Sphere), intent(inout) :: self
type(SwigClassWrapper) :: farg1 

farg1 = self%swigdata
if (self%swigdata%mem == SWIG_OWN) then
call swigc_delete_Sphere(farg1)
end if
self%swigdata%ptr = C_NULL_PTR
self%swigdata%mem = SWIG_NULL
end subroutine

  subroutine swigf_assignment_Sphere(self, other)
   use, intrinsic :: ISO_C_BINDING
   class(Sphere), intent(inout) :: self
   type(Sphere), intent(in) :: other
   call swigc_assignment_Sphere(self%swigdata, other%swigdata)
  end subroutine
function surface_to_volume(s) &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
real(C_FLOAT) :: swig_result
class(Shape), intent(in) :: s
real(C_FLOAT) :: fresult 
type(SwigClassWrapper) :: farg1 

farg1 = s%swigdata
fresult = swigc_surface_to_volume(farg1)
swig_result = fresult
end function


end module
