!https://www.tutorialspoint.com/fortran/manipulation.htm
!Fortran - Location Functions
!Example
!The following example demonstrates the concept:

program arrayLocation
implicit none

   real, dimension(1:6) :: a = (/ 21.0, 12.0,33.0, 24.0, 15.0, 16.0 /)
   Print *, maxloc(a)
   Print *, minloc(a)
   
end program arrayLocation   