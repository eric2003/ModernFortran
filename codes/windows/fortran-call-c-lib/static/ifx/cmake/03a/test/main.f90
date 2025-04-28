program main
  implicit none
  
  interface
    function add_integer(a,b) result(c) bind(C,name='c_add_integer')
    use ISO_C_BINDING, only : C_INT
    integer(kind=C_INT) :: a
    integer(kind=C_INT) :: b
    integer(kind=C_INT) :: c
    end function add_integer
  end interface  
  
  integer :: c
  c = add_integer(1,2)
  print *, "c_add_integer c=",c
  
end program main