subroutine print_character(str) bind(C)
  character(len=*), intent(in) :: str
  write(*, '(A)') str
end subroutine print_character