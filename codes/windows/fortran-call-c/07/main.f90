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
  
  integer :: a,b,c
  a = 1
  b = 2
  print *, "a=",a
  print *, "b=",b
  c = add_integer(a,b)
  print *, "c=",c
  
end program main
