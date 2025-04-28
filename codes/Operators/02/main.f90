!https://www.tutorialspoint.com/fortran/fortran_relational_operators.htm
!Fortran - Relational Operators
!Try the following example to understand all the logical operators available in Fortran −

program relationalOp
! this program checks relational operators

implicit none  

   ! variable declaration
   integer :: a, b
   
   ! assigning values 
   a = 10   
   b = 20
   
   if (a .eq. b) then
      print *, "Line 1 - a is equal to b"
   else
      print *, "Line 1 - a is not equal to b"
   end if

   if (a > b) then
      print *, "Line 2 - a is greater than b"
   else
      print *, "Line 2 - a is less than b"
   end if
   
   if (a <= b) then
      print *, "Line 3 - a is less than or equal to b"
   else
      print *, "Line 3 - a is greater than b"
   end if
   
   a = 20   
   b = 20
   
   if (a .eq. b) then
      print *, "Line 4 - a is equal to b"
   else
      print *, "Line 4 - a is not equal to b"
   end if
   
end program relationalOp