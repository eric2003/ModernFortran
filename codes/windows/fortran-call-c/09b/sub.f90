subroutine print_character(str) bind(C, name='for_print_character')
    character(len=*), intent(in) :: str
    !write(*, '(A)') str
    print *,"haha"
end subroutine print_character