!https://www.tutorialspoint.com/fortran/fortran_do_loop.htm
!The do loop construct enables a statement, or a series of statements,
!to be carried out iteratively, while a given condition is true.

program printNum 
implicit none  

   ! define variables
   integer :: n
   
   do n = 11, 20     
      ! printing the value of n 
      print*,  n 
   end do 
   
end program printNum  