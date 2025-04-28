subroutine print_character(str,i) bind(C, name='for_print_character')
    use iso_c_binding, only: C_CHAR, c_null_char
    !character (len=1), dimension (10), intent (in) :: str
    character (kind=C_CHAR, len=1), dimension (10), intent (in) :: str
    integer, intent(in) :: i
    !write(*, '(A)') str
    print *,"i=",i
    print *,"haha"
end subroutine print_character