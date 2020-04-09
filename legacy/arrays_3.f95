program arrays
    implicit none

    interface
        subroutine alloc_out(x)
            integer, allocatable, intent(out) :: x(:)
        end subroutine alloc_out
    end interface

    integer :: i

    real, dimension(9) :: a = (/(i, i=0, 8)/)
    real, dimension(9) :: b = (/1, 2, 3, 5, 6, 7, 8, 9, 10/) ! as (1,2, ..., N would be complex declaration)
    integer, allocatable :: x(:)

    ! Element-wise operations
    print *, a
    print *, b
    print *, a * b

    ! Test allocation
    allocate(x(10))
    call alloc_out(x)
    print*, size(x)

end program arrays

subroutine alloc_out(x)
    integer, allocatable, intent(out) :: x(:)
    if (allocated(x)) stop "OUT ARRAYS SHOULD ALWAYS BE DEALLOCATED ON ENTER"
end subroutine alloc_out


subroutine arr_mul(a, b)
    real, dimension(:) :: a, b
end subroutine arr_mul
