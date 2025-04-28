!https://www.tutorialspoint.com/fortran/manipulation.htm
!Fortran - Manipulation Functions
!Example
!The following example demonstrates the concept −

program arrayShift
implicit none

   real, dimension(1:6) :: a = (/ 21.0, 22.0, 23.0, 24.0, 25.0, 26.0 /)
   real, dimension(1:6) :: x, y
   write(*,10) a
   
   x = cshift ( a, shift = 2)
   write(*,10) x
   
   y = cshift (a, shift = -2)
   write(*,10) y
   
   x = eoshift ( a, shift = 2)
   write(*,10) x
   
   y = eoshift ( a, shift = -2)
   write(*,10) y
   
   10 format(1x,6f6.1)

end program arrayShift