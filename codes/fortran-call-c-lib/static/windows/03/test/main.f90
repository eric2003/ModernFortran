program main
  implicit none
  
  interface
    subroutine print_string(str) bind(C,name='c_print_string')
    use ISO_C_BINDING, only : C_CHAR
    character(kind=C_CHAR),dimension(*) :: str
    end subroutine print_string
  end interface  

  call print_string("haha-c_print_string")
  
end program main