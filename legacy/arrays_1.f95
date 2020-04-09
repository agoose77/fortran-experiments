program arrays
implicit none

	! One dimensions
	integer, dimension(10) :: array = (/ 1,2,3,4,5,6,7,8,9,10/)
	! Equivalent to above
	integer :: array_2(10) = (/1,2,3,4,5,6,7,8,9,10/)

	! Allocatable
	integer, dimension(:), allocatable :: allocatable_arr

	integer :: allocation_status, deallocation_status
	logical:: allocation_successful, deallocation_successful
	integer :: N = 100 ! How many entries to allocate

	! Do allocation
	ALLOCATE(allocatable_arr(N), STAT=allocation_status)
	allocation_successful = allocation_status == 0

	print*, SIZE(allocatable_arr)

	! Do de-allocation
	DEALLOCATE(allocatable_arr, STAT=deallocation_status)
	deallocation_successful = deallocation_status == 0

	print*, deallocation_successful, allocation_successful

	print*, array_2
	!data array_2/10*0.0/ This would assign array to 0, 0, ..., 0 for both print stments
	print*, array_2

end program arrays
