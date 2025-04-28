!https://www.tutorialspoint.com/fortran/fortran_cycle.htm
!The cycle statement causes the loop to skip the remainder of its body,
!and immediately retest its condition prior to reiterating.

program cycle_example     
implicit none      

   integer :: i     
   
   do i = 1, 20          
   
      if (i == 5) then 
         cycle          
      end if         
      
   print*, i      
   end do  
   
end program cycle_example  