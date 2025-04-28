!https://www.tutorialspoint.com/fortran/If_then_construct.htm
!An if… then statement consists of a logical expression followed by one or more statements and terminated by an end if statement.

program ifProg
implicit none
   ! local variable declaration
   integer :: a = 10
 
   ! check the logical condition using if statement
   if (a < 20 ) then
   
   !if condition is true then print the following 
   print*, "a is less than 20"
   end if
       
   print*, "value of a is ", a
 end program ifProg