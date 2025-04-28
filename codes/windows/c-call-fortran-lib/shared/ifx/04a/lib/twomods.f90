module mod1
implicit none 

   integer, parameter :: N1 = 1
   
contains      
   subroutine show_N1() bind(C, name='show_N1')
      !DEC$ ATTRIBUTES DLLEXPORT :: show_N1   
      print*, "N1 = ", N1
   end subroutine show_N1
   
end module mod1

module mod2
use mod3
implicit none 

   integer, parameter :: N2 = 2
   
contains      
   subroutine show_N2() bind(C, name='show_N2')
      !DEC$ ATTRIBUTES DLLEXPORT :: show_N2   
      print*, "N2 = ", N2
      print*, " begin to call show_N3() in show_N2()"
      call show_N3()
      print*, " end to call show_N3() in show_N2()"
   end subroutine show_N2
   
end module mod2