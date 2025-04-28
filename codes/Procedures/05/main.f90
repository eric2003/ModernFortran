!https://www.tutorialspoint.com/fortran/fortran_file_input_output.htm
!Fortran - Procedures
!Internal Procedures
!When a procedure is contained within a program, it is called the internal procedure of the program.
!The syntax for containing an internal procedure is as follows −

program mainprog  
implicit none 

   real :: a, b 
   a = 2.0
   b = 3.0
   
   Print *, "Before calling swap"
   Print *, "a = ", a
   Print *, "b = ", b
   
   call swap(a, b)
   
   Print *, "After calling swap"
   Print *, "a = ", a
   Print *, "b = ", b
 
contains   
   subroutine swap(x, y)     
      real :: x, y, temp      
      temp = x 
      x = y  
      y = temp   
   end subroutine swap 
   
end program mainprog   