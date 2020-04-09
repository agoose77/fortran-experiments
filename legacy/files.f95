program files
    implicit none

    interface exit_err
        module procedure file_err_
    end interface exit_err

    integer, parameter :: FILE_DESC_0 = 10
    integer :: open_status, close_status, read_status
    character(255) filename, err_msg, line

    filename = "do_loops.f90"

    open(FILE_DESC_0, file=trim(filename), status='old', iostat=open_status, &
        action='read')

    ! Check file opens successfully
    CHECK_VALID: if (open_status /= 0) then
        err_msg = "Unable to open " // trim(filename)
        print*, err_msg
        stop
    end if CHECK_VALID

    read(FILE_DESC_0, *, iostat=read_status) line
    if (read_status /= 0) then
        err_msg = "Unable to readline :/ " // trim(filename)
        print*, err_msg
        stop
    end if

    read(FILE_DESC_0, *, iostat=read_status) line; print*, line

    close(FILE_DESC_0, iostat=close_status)

! Everything hereafter non-executable
contains
    ! Can't use pure, as this subprogram prints
    subroutine file_err_exit(error_msg)
        character(len=*), intent(in), optional :: error_msg

        if (present(error_msg)) then
            print*, err_msg
        end if

        stop
    end subroutine file_err_exit

    subroutine file_err_exit_fname(error_msg, filename)
        character(len=*), intent(in) :: error_msg, filename
        character(255) :: msg
        msg = trim(error_msg) // ": " // filename

        print*, msg
        stop
    end subroutine file_err_exit_fname


end program files
