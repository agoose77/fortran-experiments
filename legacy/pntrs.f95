program pntrs
    integer, pointer :: p => null(), q => null()
    integer, target :: z = 0, y = 0

    p => z

    q => p ! Q assigned to pointer P, which is currently pointing to Z (take Z)
    p => y ! P assigned to value Y

    q = 4 ! Set Z to 4
    p = -4 ! Set y to -4

    print "(XA,I3)", "z =", z, "y =", y

end program pntrs
