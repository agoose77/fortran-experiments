program montecarlo
    implicit none


    INTEGER, PARAMETER :: DP = SELECTED_REAL_KIND(15, 307)
    INTEGER, PARAMETER :: I64 = SELECTED_INT_KIND(18) ! +-10^18
    INTEGER(KIND=I64) :: i, n, n_inner ! Alternatively INTEGER*8 for 64-bit integer
    REAL(KIND=dp) :: x, y ! Alternatively DOUBLE PRECISION

    n_inner = 0
    n = 16000000000_I64 ! 8 byte integer
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