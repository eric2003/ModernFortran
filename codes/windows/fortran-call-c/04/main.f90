module mymod
  interface
    subroutine hello() bind(C,name='say_hello')
    end subroutine hello
  end interface
end module mymod

program main
  use mymod
  implicit none

  call hello()
  
end program main