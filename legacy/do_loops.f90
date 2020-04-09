program do_loops

    integer :: x = 0

    ! named do
    SOME_NAME: do x = 0, 3
        print*, x
    end do SOME_NAME

    ! old-style do with end statement indicated by label
    print*, "old-style do"
    do 10 x = 0, 3
        print*, x

    10 continue

    ! do 0->6 with step of 2
    print*, "example with steps"
    do x = 0, 6, 2
        print*, x
    end do

    ! while some statement holds .TRUE.
    print*, "while do"
    x = 0
    do while (x < 10)
        print*, x
        x = x + 1
    end do

    ! equivalents of break, continue (exit, cycle)
    print*, "continue and break"
    do x=0, 10
        if (x == 9) exit
        if (x == 4) cycle
        print*, x
    end do

    ! inline do
    print*, "implicit do ()"
    print*, (x, x=1, 10)


end program do_loops
