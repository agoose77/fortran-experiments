program arrays
implicit none

	! One dimensions
	integer, dimension(10) :: array = (/ 1,2,3,4,5,6,7,8,9,10/)
	integer :: i = 0, j = 0

	! Matrix
	integer, dimension(3, 3) :: matrix = reshape((/1,2,3,4,5,6,7,8,9/), &
												 (/3, 3/))
	integer, dimension(5, 5) :: matrix_2  = 0 ! Short hand zero initialisation
	integer :: test2(5)=(/(i,i=1,5)/) ! Short hand array initialisation (implicit do)

	integer :: k

	do j=1, 3
		do i=1, 3
			print*, "matrix(",i, ",", j, ")=", matrix(i, j)
		end do
	end do

	print*, "NOW READ"
	do j=1, 5
		do i=1, 5
			print*, "matrix_2(",i, ",", j, ")=", matrix_2(i, j)
		end do
	end do

	! Formatting
	900 format(A, 5I3)

	print 900, "Test Loop", (matrix_2(1,j), j=1,5) ! Print the elements of the 1st row
	print 900, "Test Slice", matrix(:3,2) ! Print the elements of the 2nd row
	print 900, "Test Shorthand", test2

end program arrays
