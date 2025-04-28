program main
  implicit none
  
  interface
    subroutine hello() bind(C,name='say_hello')
    end subroutine hello
  end interface  

  call hello()
  
end program main