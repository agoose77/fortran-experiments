module list
    implicit none

    type :: Node
        !private
        type(Node), pointer :: next => null(), prev => null()
        integer :: value = 0

    end type Node

    type LinkedList
        type(Node), pointer :: root => null(), tail => null()
    end type LinkedList

contains
    subroutine list_init(self_list, success)
        logical, intent(inout), optional :: success
        type(LinkedList), pointer :: self_list

        if (associated(self_list)) then
            print*, "List already allocated"

            if (present(success)) success = .FALSE.
            return
        end if

        allocate(self_list)
        return
    end subroutine list_init

    subroutine list_append(self_list, value)
        type(LinkedList), pointer :: self_list
        integer, intent(in) :: value
        type(Node), pointer :: new_node

        allocate(new_node)

        if (.not. associated(self_list % tail)) then
            self_list % tail => new_node
            self_list % root => new_node

        else
            ! Forward and back links
            self_list % tail % next => new_node
            new_node % prev => self_list % tail

            ! Update list tail
            self_list % tail => new_node
        end if

        new_node % value = value

    end subroutine list_append

    subroutine list_next(node_i)
        type(Node), pointer :: node_i
        node_i => node_i % next
    end subroutine list_next

end module list

program test_types
    use list
    implicit none

    type(Node), pointer :: root
    type(LinkedList), pointer :: my_list => null()

    integer :: i, x

    call list_init(my_list)
    call list_append(my_list, 50)
    call list_append(my_list, 10)
    call list_append(my_list, 14)

    root => my_list % root

    ITER: do i=1, 3
        x = root % value
        call list_next(root)
        print*, i, x
    end do ITER
end program test_types
