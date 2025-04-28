!https://www.tutorialspoint.com/fortran/fortran_file_input_output.htm
!Fortran - Procedures
!Specifying the Intent of the Arguments
!The intent attribute allows you to specify the intention with which arguments are used in the procedure. The following table provides the values of the intent attribute −
!Value	Used as	Explanation
!in	intent(in)	Used as input values, not changed in the function
!out	intent(out)	Used as output value, they are overwritten
!inout	intent(inout)	Arguments are both used and overwritten
!The following example demonstrates the concept −

program calling_func
implicit none

   real :: x, y, z, disc
   
   x = 1.0
   y = 5.0
   z = 2.0
   
   call intent_example(x, y, z, disc)
   
   Print *, "The value of the discriminant is"
   Print *, disc
   
end program calling_func


subroutine intent_example (a, b, c, d)     
implicit none     

   ! dummy arguments      
   real, intent (in) :: a     
   real, intent (in) :: b      
   real, intent (in) :: c    
   real, intent (out) :: d   
   
   d = b * b - 4.0 * a * c 
   
end subroutine intent_example