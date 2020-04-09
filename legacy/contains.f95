module test_mod
    integer :: SQUARE=0, CIRCLE=1, TRI=2

contains
    ! Procedures
    integer function get_shape(n_verts) result(shape_type)
        select case (n_verts)
        case (4)
            shape_type = SQUARE
        case (3)
            shape_type = TRI
        case (0)
            shape_type = CIRCLE
        case DEFAULT
            shape_type = -1
        end select

    return
    end function get_shape


end module test_mod

program contains_example
    use test_mod
    implicit none ! Following all use statements

    print*, get_shape(4) == SQUARE
    print*, get_shape(0) == CIRCLE

end program contains_example
