program save_example
    implicit none

    call DOX()
    call DOX(.TRUE.)

contains
    subroutine DOX(ass)
        integer :: saved_1 = 0 ! implict save!
        integer, save :: saved_2 ! explicit save!

        logical, optional, intent(in) :: ass ! optional arg
        logical :: ass_v ! assigned value

        ! Do assignment if flag is False (default)
        if (.not. present(ass)) then
            ass_v = .FALSE.
        else
            ass_v = ass
        end if

        ! assign if flag is False
        if (.not. ass_v) then
             saved_2 = 0
             print*, "ASSIGN"
        end if

        saved_1 = saved_1 + 1
        saved_2 = saved_2 + 1

        print*, saved_1, saved_2

    end subroutine DOX


end program save_example
