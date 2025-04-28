subroutine print_string(str)
    character(len=*), intent(in) :: str
    print *, "String: [", trim(str), "] (length =", len_trim(str), ")"
    print *, "str=",str
end subroutine print_string

program test_print_string
  implicit none
  character(len=10) :: str = "Hello"
  character(len=10) :: str1 = "Hello 1"
  
  ! 调用子程序
  call print_string(str)
  call print_string(str1)
  call print_string("haha-c_print_string")
  
end program test_print_string