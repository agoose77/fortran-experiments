program funcs
implicit none

! Forward declare
integer :: my_func, my_func_95

print*, my_func(1, 2)
print*, my_func_95(1, 2)

end program funcs

! External functions!
! Fortran 77
function my_func(a, b)
	integer :: a, b, my_func
	my_func = a + b
	return
end function my_func

! Fortran 95
function my_func_95(a, b) result (res)
	integer a, b, res
	res = a + b
	return
end function my_func_95
