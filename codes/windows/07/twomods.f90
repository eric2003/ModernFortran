module mod1
implicit none 

   integer, parameter :: N1 = 1
   
contains      
   subroutine show_N1()
      print*, "N1 = ", N1
   end subroutine show_N1
   
end module mod1

module mod2
implicit none 

   integer, parameter :: N2 = 2
   
contains      
   subroutine show_N2()
      print*, "N2 = ", N2
   end subroutine show_N2
   
end module mod2