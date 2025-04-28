module onemod  
implicit none 

   integer, parameter :: N = 1024 
   integer, parameter :: M = 2048
   
contains      
   subroutine show_N()
      !DEC$ ATTRIBUTES DLLEXPORT :: show_N   
      print*, "N = ", N          
   end subroutine show_N 
   
   subroutine show_M()
      !DEC$ ATTRIBUTES DLLEXPORT :: show_M   
      print*, "M = ", M          
   end subroutine show_M    
   
end module onemod 
