program test_select
    integer :: x, read_state
    read_state = -1

    do while(read_state /= 0)
        print*, "Enter test case {1, 2, 3, 4}"
        read (*, *, iostat=read_state) x
        if (read_state /= 0) then
            print*, "Invalid value entered"
        end if

    end do

    100 FORMAT(AX,'{', I1, '}')

    select case (x)
    case (1:4)
        print 100, "Case given as", x
    case DEFAULT
        print 100, "Invalid case", x
    end select
end program test_select
