program montecarlo
    implicit none

    INTEGER*8 :: i, n, n_inner
    DOUBLE PRECISION :: x, y

    n_inner = 0
    n = 4000000000_8 ! 8 byte integer
    call RANDOM_SEED()

    do 10 i = 1, n
        call RANDOM_NUMBER(x)
        call RANDOM_NUMBER(y)

        if ((x**2 + y**2) <= 1) then
            n_inner = n_inner + 1
        end if

    10 end do ! or 10 continue

    print *, "PI is ", (4*n_inner)/dble(n) ! Convert denominator to double

end program montecarlo