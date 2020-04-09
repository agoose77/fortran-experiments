program label_demo

    integer :: x
    logical :: a, b

    x = 0
    ! arithmetic if
    if (x) 10, 20, 30

    10 print*, "x < 0" ! Case x == 0
    goto 40           ! Avoid executing 20
    20 print*, "x == 0" ! Case x < 0
    goto 40           ! Avoid executing 30
    30 print*, "x > 0" ! Case x > 0
    40 continue       ! No op statement

    ! logical
    a = .TRUE.
    b = .FALSE.

    ! (True == False)
    if (a .EQV. b) then
        print*, "a == b"
    end if

    if (a .OR. b) then
        print*, "a || b"
    end if

    ! named if then
    SOME_NAME: if (x == 0) then
        print*, "x == 0"
    else if (x == 1) then
        print*, "x == 1"
    end if SOME_NAME

end program label_demo
