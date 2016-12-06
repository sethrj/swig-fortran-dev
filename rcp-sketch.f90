
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
    ! Create new data
    subroutine create(self)
        type(Foo) :: self
        if (self%ptr)
            call self%release()
        self%ptr = wrap_new_foo()
    end subroutine

    ! Move assignment
    subroutine acquire(self, rhs)
        type(Foo) :: self
        type(Foo) :: rhs
        if (self%ptr)
            call self%release()
        self%ptr = rhs%ptr
        call rhs%release()
    end subroutine

    subroutine reference(self, rhs)
        if (self%ptr)
            call self%release()
        self%ptr = rhs%ptr
        call inc_rcp(self%ptr)
    end operator

    subroutine release(self)
        call wrap_delete_foo(self%ptr)
        self%ptr = C_NULL_PTR
    end subroutine
end type

program main
    type(Foo) :: blorp
    type(Foo) :: blorp2

    ! create a new blorp
    call blorp%create(10)

    ! get a blorp via return-by-rcp
    call blorp%acquire(get_foo())

    call blorp2%reference(blorp)

    call blorp%release()
    ! blorp2 is already null, so this does nothing
    call blorp2%release()
end program
    
