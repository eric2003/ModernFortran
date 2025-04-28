!https://www.tutorialspoint.com/fortran/fortran_dynamic_arrays.htm
!Fortran - Dynamic Arrays
!Example
!The following example demonstrates the concepts discussed above.

program dynamic_array 
implicit none 

   !rank is 2, but size not known   
   real, dimension (:,:), allocatable :: darray    
   integer :: s1, s2     
   integer :: i, j     
   
   print*, "Enter the size of the array:"     
   read*, s1, s2      
   
   ! allocate memory      
   allocate ( darray(s1,s2) )      
   
   do i = 1, s1           
      do j = 1, s2                
         darray(i,j) = i*j               
         print*, "darray(",i,",",j,") = ", darray(i,j)           
      end do      
   end do      
   
   deallocate (darray)  
end program dynamic_array 