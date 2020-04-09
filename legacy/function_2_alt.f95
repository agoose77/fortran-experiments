program funcs
implicit none

! Forward declare my_func_95 (As it is defined outside of program, so counts as external)
! Hence we need to define its call signature
interface
	integer function my_func_95(a, b, c)
	implicit none
		integer :: a, b
		integer, optional :: c
	end function my_func_95
end interface


print*, my_func_95(1, 2)
print*, my_func_95(1, 2, 3)

! Use contains because the interface of the function
! Must be explicit, rather than implicitly declared by a type statement
! Internal function now!

end program funcs

! Fortran 95
function my_func_95(a, b, c) result (res)
implicit none
	integer a, b, res
	integer, optional :: c

	res = a + b
	if (present(c)) then
		res = res + c
	end if

	return
end function my_func_95
