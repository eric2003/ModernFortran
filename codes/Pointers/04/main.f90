!https://www.tutorialspoint.com/fortran/fortran_derived_data_types.htm
!Fortran - Pointers
!Example 2
!The following example demonstrates the concepts −

program pointerExample
implicit none

   integer, pointer :: a, b
   integer, target :: t
   integer :: n
   
   t = 1
   a => t
   t = 2
   b => t
   n = a + b
   
   Print *, a, b, t, n 
   
end program pointerExample