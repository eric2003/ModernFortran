!https://www.tutorialspoint.com/fortran/reduction.htm
!Fortran - Reduction Functions
!Example
!The following example demonstrates the concept:

program arrayReduction
implicit none

   real, dimension(1:6) :: a = (/ 21.0, 12.0,33.0, 24.0, 15.0, 16.0 /)
   Print *, maxval(a)
   Print *, minval(a)
   Print *, sum(a)
   Print *, product(a)
   
end program arrayReduction 