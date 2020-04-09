program fmt
implicit none

	real :: x = 0.025
	
	! Label 900 indicates a format of char, exponential format real
	900 format(A,E8.1)
	
	! These two are equivalent
	print 900, "x=",x
	write(*,900) "x=", x
	
	call dbg()
	
end program fmt


subroutine dbg
	integer :: x, y
	
	print "(A)", "Input some data!"
	!read(*,*) x, y
	x = 12
	y = 15
	print*, "X=",x,"Y=",y
	12 format(A)
	
	print 12, "ASD"

end subroutine dbg