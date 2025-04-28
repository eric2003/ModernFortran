!https://www.tutorialspoint.com/fortran/fortran_do_loop.htm
!The do loop construct enables a statement, or a series of statements,
!to be carried out iteratively, while a given condition is true.
!This program calculates the factorials of numbers 1 to 10 −

program factorial  
implicit none  

   ! define variables
   integer :: nfact = 1   
   integer :: n  
   
   ! compute factorials   
   do n = 1, 10      
      nfact = nfact * n 
      ! print values
      print*,  n, " ", nfact   
   end do 
   
end program factorial  