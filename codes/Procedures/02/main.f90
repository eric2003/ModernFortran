!https://www.tutorialspoint.com/fortran/fortran_file_input_output.htm
!Fortran - Procedures
!Calling a Subroutine
!You need to invoke a subroutine using the call statement.
!The following example demonstrates the definition and use of a subroutine swap, 
!that changes the values of its arguments.

program calling_func
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
   
end program calling_func


subroutine swap(x, y) 
implicit none

   real :: x, y, temp   
   
   temp = x  
   x = y 
   y = temp  
   
end subroutine swap