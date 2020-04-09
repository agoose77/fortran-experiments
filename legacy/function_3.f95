program funcs
implicit none

! Forward declare my_func_95
interface 
	function increment(a) result (res)
	implicit none
		integer, intent(inout) :: a
		integer res
	end function increment
end interface

integer :: x = 0

! Use contains because the interface of the function
! Must be explicit, rather than implicitly declared by a type statement
! Internal function now!

end program funcs

! Fortran 95
function increment(a) result (res)
implicit none
	integer, intent(inout) :: a
	integer res
	a = a + 1
	res = a
	return
end function increment