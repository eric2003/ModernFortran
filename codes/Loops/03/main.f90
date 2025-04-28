!https://www.tutorialspoint.com/fortran/fortran_do_while_loop.htm
!It repeats a statement or a group of statements while a given condition is true.
!It tests the condition before executing the loop body.

program factorial  
implicit none  

   ! define variables
   integer :: nfact = 1   
   integer :: n = 1 
   
   ! compute factorials   
   do while (n <= 10)       
      nfact = nfact * n 
      n = n + 1
      print*,  n, " ", nfact   
   end do 
end program factorial  