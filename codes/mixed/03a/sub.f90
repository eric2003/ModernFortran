subroutine print_character(str)
  character(len=*), intent(in) :: str
  write(*, '(A)') str
end subroutine print_character