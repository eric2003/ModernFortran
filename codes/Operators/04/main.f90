!https://www.tutorialspoint.com/fortran/fortran_operators_precedence.htm
!Try the following example to understand the operator precedence in Fortran −

program precedenceOp
! this program checks logical operators

implicit none  

   ! variable declaration
   integer :: a, b, c, d, e
   
   ! assigning values 
   a = 20   
   b = 10
   c = 15
   d = 5
  
   e = (a + b) * c / d      ! ( 30 * 15 ) / 5
   print *, "Value of (a + b) * c / d is :    ",  e 

   e = ((a + b) * c) / d    ! (30 * 15 ) / 5
   print *, "Value of ((a + b) * c) / d is  : ",  e 

   e = (a + b) * (c / d);   ! (30) * (15/5)
   print *, "Value of (a + b) * (c / d) is  : ",  e 

   e = a + (b * c) / d;     !  20 + (150/5)
   print *, "Value of a + (b * c) / d is  :   " ,  e 
  
end program precedenceOp