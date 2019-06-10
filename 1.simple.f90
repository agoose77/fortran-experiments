program hello
    ! Don't infer types from variable names
    implicit none
    ! WRITE(unit num, format num)
    ! UNIT=5 reserved for INPUT from the k.b. with READ
    ! UNIT=6 reserved for OUTPUT to the screen with WRITE
    ! UNIT=* indicates the terminal (i.e. 5/6 depending upon context).
    ! -------------------------------------------------------------
    ! FORMAT=* indicates LIST-DIRECTED / FREE FORMAT
    ! FORMAT=n designates number of FORMAT statement to use
    write(*,*) 'Hello world!'

    ! Print with no inter-term spacing
    write(*, 10) "Word", 10, "Second Word", 44
    10 FORMAT(A4, I3, A11, I2)

    ! Print with 2 character inter-term spacing
    write(*, 20) "Word", 10, "Second Word", 44
    20 FORMAT(A4, 2X, I3, 2X, A11, 2X, I2)

    ! Print using `print`
    print 30, "Jack and Jill", "Went up the hill"
    30 FORMAT(A13, A16)
end program hello