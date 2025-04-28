!https://www.tutorialspoint.com/fortran/nested_if_construct.htm
!You can use one if or else if statement inside another if or else if statement(s).

program nestedIfProg
implicit none
   ! local variable declaration
   integer :: a = 100, b= 200
 
   ! check the logical condition using if statement
   if( a == 100 ) then
  
   ! if condition is true then check the following 
      
   if( b == 200 ) then
  
   ! if inner if condition is true 
   print*, "Value of a is 100 and b is 200" 
  
   end if
   end if
   
   print*, "exact value of a is ", a
   print*, "exact value of b is ", b
 
end program nestedIfProg