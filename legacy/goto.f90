program goto_demo

integer :: x = 3

! computed goto
goto (10, 20, 30, 40), x ! Goto statement at x'th label

10 print*, "x == 1"
goto 50

20 print*, "x == 2"
goto 50

30 print*, "x == 3"
goto 50

40 print*, "x == 4"
50 continue

! assigned goto (x must belong to {70, 80, 90})
assign 70 to x

print*, x
goto x !(70, 80, 90)

! Inline IF
70 if (.TRUE..EQV..TRUE.) print*, "x == 70"
goto 100

80 print*, "x == 80"
goto 100

90 print*, "x == 90"
100 continue

end program goto_demo
