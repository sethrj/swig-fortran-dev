
! C++
RCP<Foo> get_foo();

! SWIG wrapper
RCP<Foo>* wrap_get_foo()
{
    return new(RCP<Foo>(get_foo()));
}

void delete_foo(RCP<Foo>* p)
{
    p->reset();
}

! Wrapper interface code
function wrap_get_foo() & bind(blah)
   type(C_PTR) :: fresult
end function

function wrap_delete_foo(frcp) & bind(blah)
   type(C_PTR) :: frcp
end function

function get_foo() &
    result(fresult)
    type(Foo) :: fresult

    fresult%ptr = wrap_get_foo()
end function

type Foo
    ! This C pointer is actually an RCP<Foo>*
    type(C_PTR), private :: ptr = C_NULL_PTR
contains
    ! Move assignment
    subroutine acquire(self, rhs)
        type(Foo) :: self
        type(Foo) :: rhs
        self%release()
        self%ptr = rhs%ptr
        rhs%release()
    end subroutine

    operator=(self, rhs)
        self%release()
        self%ptr = rhs%ptr
        inc_rcp(self%ptr)
    end operator

    subroutine release(self)
        call wrap_delete_foo(self%ptr)
        self%ptr = C_NULL_PTR
    end subroutine
end type

program main
    type(Foo) :: blorp
    type(Foo) :: blorp2

    blorp%create(10)
    blorp%acquire(get_foo())

    blorp2%reference(blorp)

    blorp%release()
    ! blorp2 is 
    blorp2%release()
end program
    
