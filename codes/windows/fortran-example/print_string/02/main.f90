program test_print_string
  implicit none
  character(len=10) :: str = "Hello"
  character(len=10) :: str1 = "Hello "
  
  ! �����ӳ���
  call print_string(str)
  call print_string(str1)
  
contains
  ! �����ӳ���
  subroutine print_string(str)
    character(len=*), intent(in) :: str
    print *, "String: [", trim(str), "] (length =", len_trim(str), ")"
  end subroutine print_string
end program test_print_string