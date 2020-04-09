program funcs
implicit none

! Forward declare
!integer :: my_func_95

print*, my_func_95(1, 2)
print*, my_func_95(1, 2, 3)

! Use contains because the interface of the function
! Must be explicit, rather than implicitly declared by a type statement
! Internal function now!
contains
	! Fortran 95
	function my_func_95(a, b, c) result (res)
		integer a, b, res
		integer, optional :: c
		
		res = a + b
		if (present(c)) then
			res = res + c
		end if
		
		return
	end function my_func_95

end program funcs
