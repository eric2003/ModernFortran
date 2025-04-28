!https://www.tutorialspoint.com/fortran/if_elseif_else_construct.htm
!An if statement construct can have one or more optional else-if constructs.
!When the if condition fails, the immediately followed else-if is executed. 
!When the else-if also fails, its successor else-if statement (if any) is executed, and so on.

program ifElseIfElseProg
implicit none

   ! local variable declaration
   integer :: a = 100
 
   ! check the logical condition using if statement
   if( a == 10 ) then
  
      ! if condition is true then print the following 
      print*, "Value of a is 10" 
   
   else if( a == 20 ) then
  
      ! if else if condition is true 
      print*, "Value of a is 20" 
  
   else if( a == 30 ) then
   
      ! if else if condition is true  
      print*, "Value of a is 30" 
  
   else
   
      ! if none of the conditions is true 
      print*, "None of the values is matching" 
      
   end if
   
   print*, "exact value of a is ", a
 
end program ifElseIfElseProg