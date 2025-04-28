program main
  use ISO_C_BINDING
  implicit none
  
  interface
    subroutine print_string(str) bind(C,name='c_print_string')
    use ISO_C_BINDING, only : C_CHAR
    character(kind=C_CHAR),dimension(*) :: str
    end subroutine print_string
  end interface
  
  character(len=10) :: str = "Hello"
  character(len=20) :: str1 = "Hello World"
  
  call print_string(str//C_NULL_CHAR)
  call print_string(str1//C_NULL_CHAR)
  call print_string("haha-c_print_string"//C_NULL_CHAR)
  
end program main