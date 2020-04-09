program quad
    implicit none

    double precision :: a, b, c
    double precision :: x1, x2

    a = 4
    b = 9
    c = 5

    call solve_quadratic(a, b, c, x1, x2)

    print*, x1, x2

end program quad


subroutine solve_quadratic(a, b, c, x1, x2)
    double precision :: a, b, c, x1, x2, sqbsqmin4ac
    sqbsqmin4ac = sqrt(b ** 2 - 4.d0 * a * c)
    x1 = (-b + sqbsqmin4ac) / (2. * a)
    x2 = (-b - sqbsqmin4ac) / (2. * a)
    print*, (4*a*c)
    return
end subroutine solve_quadratic
