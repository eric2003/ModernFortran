!https://www.tutorialspoint.com/fortran/fortran_operators.htm
!Try the following example to understand all the arithmetic operators available in Fortran −

program arithmeticOp

! this program performs arithmetic calculation
implicit none  

   ! variable declaration
   integer :: a, b, c
   
   ! assigning values 
   a = 5   
   b = 3  
   
   ! Exponentiation 
   c = a ** b 
   
   ! output 
   print *, "c = ", c
   
   ! Multiplication  
   c = a * b 
   
   ! output 
   print *, "c = ", c
   
   ! Division  
   c = a / b 
   
   ! output 
   print *, "c = ", c
   
   ! Addition
   c = a + b 
   
   ! output 
   print *, "c = ", c
   
   ! Subtraction 
   c = a - b 
   
   ! output 
   print *, "c = ", c
   
end program arithmeticOp