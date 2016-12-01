program main

#include "ScaleSTL/FortranTestMacros.h"

    use ScaleSTL_Vec_Int_M, Vec_Int=>ScaleSTL_Vec_Int
    use ScaleSTL_Vec_Flt_M, Vec_Flt=>ScaleSTL_Vec_Flt
    use ScaleSTL_Vec_Dbl_M, Vec_Dbl=>ScaleSTL_Vec_Dbl
    use ScaleSTL_Vec_Str_M, Vec_Str=>ScaleSTL_Vec_Str
    use ScaleSTL_Vec_Sze_M, Vec_Sze=>ScaleSTL_Vec_Sze

    implicit none

    integer,parameter :: L=C_SIZE_T

    !for each one of the SCALE STL types

    !std::vector<int>
    call testVec_Int()

    !std::vector<float>
    call testVec_Flt()

    !std::vector<double>
    call testVec_Dbl()

    !std::vector<size_t>
    call testVec_Sze()

    !std::vector<std::string>
    call testVec_Str()

contains

subroutine testVec_Int()
    type(Vec_Int) :: vec,vec2
    integer(L) :: i
    call vec%initialize()
    EXPECT_EQ(0,vec%size())
    call vec%push_back(5)
    EXPECT_EQ(5,vec%back())
    EXPECT_EQ(5,vec%front())
    call vec%destroy()
end subroutine testVec_Int

subroutine testVec_Flt()
    type(Vec_Flt) :: vec,vec2
    call vec%initialize()
    EXPECT_EQ(0,vec%size())
    call vec%push_back(0.5)
    EXPECT_EQ(0.5,vec%at(1_L))
    call vec%destroy()
end subroutine testVec_Flt

subroutine testVec_Dbl()
    type(Vec_Dbl) :: vec,vec2
    call vec%initialize()
    EXPECT_EQ(0,vec%size())
    call vec%push_back(0.5d0)
    EXPECT_EQ(0.5d0,vec%at(1_L))
    call vec%destroy()
end subroutine testVec_Dbl

subroutine testVec_Sze()
    type(Vec_Sze) :: vec,vec2
    call vec%initialize()
    EXPECT_EQ(0,vec%size())
    call vec%push_back(1000_L)
    EXPECT_EQ(1000,vec%at(1_L))
    call vec%destroy()
end subroutine testVec_Sze

subroutine testVec_Str()
    type(Vec_Str) :: vec,vec2
    character(1028) :: buffer

    call vec%initialize_size(1_L)
    call vec%set(1_L,"FIRST")
    !call printVec_Str(vec%max_element_length(),vec)

    call vec%resize_fill(10_L,"3.0")
    !call printVec_Str(vec%max_element_length(),vec)

    call vec%insert(4_L,"4.0")
    !call printVec_Str(vec%max_element_length(),vec)

    call vec%at(buffer,4_L)
    EXPECT_EQ('4.0',trim(buffer))

    call vec%at(buffer,5_L)
    EXPECT_EQ('3.0',trim(buffer))
    EXPECT_EQ(11,vec%size())
    call vec%erase(5_L)
    !call printVec_Str(vec%max_element_length(),vec)

    EXPECT_TRUE(vec%contains('4.0'))
    call vec%erase(4_L)
    !call printVec_Str(vec%max_element_length(),vec)

    EXPECT_FALSE( vec%contains('4.0'))
    call vec%clear()
    !call printVec_Str(vec%max_element_length(),vec)
    EXPECT_EQ(0,vec%size())
    EXPECT_TRUE(vec%empty())

    call vec%push_back("hello")
    call vec%push_back("world")
    call vec%push_back("this is a longer string")
    call vec%push_back(".")
    EXPECT_EQ(4,vec%size())
    !call printVec_Str(vec%max_element_length(),vec)

    call vec%set(2_L,"universe");
    call vec%at(buffer,2_L)
    EXPECT_EQ('universe',trim(buffer))
    !call printVec_Str(vec%max_element_length(),vec)

    call vec%erase(1_L);
    call vec%at(buffer,1_L)
    EXPECT_EQ('universe',trim(buffer))
    !call printVec_Str(vec%max_element_length(),vec)

    call vec2%initialize_copy(vec);
    call vec%destroy()
    call vec2%at(buffer,1_L)
    !call printVec_Str(vec2%max_element_length(),vec2)
    EXPECT_EQ('universe',trim(buffer))

    call vec2%insert(9_L,"way out here")
    !call printVec_Str(vec2%max_element_length(),vec2)
    EXPECT_EQ(9,vec2%size())

    call vec2%resize(6_L)
    EXPECT_EQ(6,vec2%size())
    !call printVec_Str(vec2%max_element_length(),vec2)

    call vec2%reserve(1000_L)
    EXPECT_EQ(6,vec2%size())

    !call printVec_Str(vec2%max_element_length(),vec2)

    call vec2%push_back("xyz")
    call vec2%push_back("abc")
    call vec2%push_back("uvw")
    !call printVec_Str(vec2%max_element_length(),vec2)

    call vec2%pop_back()
    !call printVec_Str(vec2%max_element_length(),vec2)
    call vec2%destroy()
end subroutine testVec_Str

subroutine printVec_Str(len,vec)
    type(Vec_Str),intent(in) :: vec
    integer(L) :: len
    character(len) :: str
    integer(L) :: i
    call vec%front(str)
    if( vec%empty() )then
        write(*,*)'front: undef'
        write(*,*)'back: undef'
    else
        call vec%back(str)
        write(*,*)'front: ',trim(str)
        write(*,*)'back: ',trim(str)
    end if
    do i=1,vec%size()
        call vec%at(str,i)
        write(*,*)i,trim(str),vec%element_length(i)
    end do
    write(*,*)'max_length=',vec%max_element_length()
    write(*,*)'total_length=',vec%total_element_length()
    write(*,*)

end subroutine

end program
