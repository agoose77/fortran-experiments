program programs
    implicit none

    integer :: sub_1_res(5) = 0
    integer, allocatable :: res_array(:)
    integer :: depth = 0

    print*, factorial(3)
    print*, factorial2(3)

    call array_factorial(5, sub_1_res)
    call array_factorial2(5, res_array)
    print*, res_array

    ! Define this module contains a function
    contains
    recursive function factorial(n) result (fac)
        integer, intent(in) :: n
        integer :: fac

        if (n <= 1) then
            fac = n
            return
        end if

        fac = n * factorial(n - 1)
        return

    end function

    integer recursive function factorial2(n) result (fac)
        integer, intent(in) :: n

        if (n <= 1) then
            fac = n
            return
        end if

        fac = n * factorial2(n - 1)
        return

    end function factorial2

    ! fortran 9 allows optional and keywargs
    recursive subroutine array_factorial(n, res, i)
        integer, intent(in) :: n
        integer, dimension(:), intent(inout) :: res(:)
        integer, optional, intent(in) :: i
        integer :: depth

        if (n <= 1) then
            return
        end if

        ! Depth for setting indices
        if (.not. present(i)) then
            depth = 0
        else
            depth = i
        end if

        res(depth) = n
        call array_factorial(n - 1, res, depth + 1)

        return
    end subroutine

    ! fortran 9 allows optional and keywargs
    recursive subroutine array_factorial2(n, res, i)
        integer, intent(in) :: n
        integer, allocatable, intent(out) :: res(:)
        integer, optional, intent(in) :: i
        integer :: this_i

        if (.not. present(i)) then
            this_i = 0 ! assign i if not present!
        else
            this_i = i
        end if

        this_i = this_i + 1

        ! Allocate the array when we know how many terms we've handled (n=1)
        ! Handle case this subroutine called with n=0
        if (n <= 1) then
            allocate(res(this_i)) ! allocate array
        end if

        if (n > 1) then
            call array_factorial2(n - 1, res, this_i)
        end if

        res(this_i) = n

        return
    end subroutine
end program programs
