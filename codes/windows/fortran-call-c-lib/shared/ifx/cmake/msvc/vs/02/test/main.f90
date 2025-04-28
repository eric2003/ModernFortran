program main
    implicit none
  
    call print_string("haha-c_print_string")
  
contains
    subroutine print_string(str)
      use iso_c_binding, only: C_CHAR, C_NULL_CHAR
      character(len=*), intent(in) :: str
      
      interface
        subroutine c_print(c_str) bind(C, name='c_print_string')
          use iso_c_binding, only: C_CHAR
          character(kind=C_CHAR), dimension(*) :: c_str
        end subroutine c_print
      end interface
      
      call c_print(str // C_NULL_CHAR)
    end subroutine print_string
end program main