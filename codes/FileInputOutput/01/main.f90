!https://www.tutorialspoint.com/fortran/fortran_file_input_output.htm
!Fortran - File Input Output
!Example
!This example demonstrates opening a new file for writing some data into the file.

program outputdata   
implicit none

   real, dimension(100) :: x, y  
   real, dimension(100) :: p, q
   integer :: i  
   
   ! data  
   do i=1,100  
      x(i) = i * 0.1 
      y(i) = sin(x(i)) * (1-cos(x(i)/3.0))  
   end do  
   
   ! output data into a file 
   open(1, file = 'data1.dat', status = 'new')  
   do i=1,100  
      write(1,*) x(i), y(i)   
   end do  
   
   close(1) 
   
end program outputdata