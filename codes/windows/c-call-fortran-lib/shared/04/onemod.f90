module mod3
implicit none 

   integer, parameter :: N3 = 3
   
contains      
   subroutine show_N3()
      !DEC$ ATTRIBUTES DLLEXPORT :: show_N3   
      print*, "N3 = ", N3
   end subroutine show_N3
   
end module mod3