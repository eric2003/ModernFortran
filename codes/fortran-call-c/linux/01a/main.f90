program main
  implicit none
  integer :: i
  
  interface
    subroutine c_sub(m) bind(C,name='c_sub_print_integer')
    use ISO_C_BINDING, only : C_INT
    integer(kind=C_INT) :: m
    end subroutine c_sub
  end interface  
  i = 1234
  call c_sub(i)
  
end program main
