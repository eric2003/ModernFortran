subroutine print_character(str) bind(C, name='for_print_character')
    use iso_c_binding, only: C_CHAR
    character (kind=C_CHAR, len=1), dimension (20), intent (in) :: str
    integer :: strlen
    integer :: i

    strlen = size(str)

    do i = 1,strlen
       write (*,'(A)',advance='no'),str(i)
    enddo
    write (*,*)

end subroutine print_character