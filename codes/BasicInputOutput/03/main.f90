!https://www.tutorialspoint.com/fortran/fortran_basic_input_output.htm
!Fortran - Basic Input Output
!Example 3

program formattedPrint
implicit none

   real :: c = 1.2786456e-9, d = 0.1234567e3 
   integer :: n = 300789, k = 45, i = 2
   character (len=15) :: str="Tutorials Point"
   
   print "(i6)", k 
   print "(i6.3)", k 
   print "(3i10)", n, k, i 
   print "(i10,i3,i5)", n, k, i 
   print "(a15)",str 
   print "(f12.3)", d
   print "(e12.4)", c 
   print '(/,3x,"n = ",i6, 3x, "d = ",f7.4)', n, d
   
end program formattedPrint