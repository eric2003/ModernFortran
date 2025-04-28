!https://www.tutorialspoint.com/fortran/fortran_numbers.htm
!The Range, Precision and Size of Numbers
!The range on integer numbers, the precision and the size of floating point numbers
!depends on the number of bits allocated to the specific data type.

program rangePrecision
implicit none

   real:: x, y, z
   x = 1.5e+40
   y = 3.73e+40
   z = x * y 
   print *, z
   
end program rangePrecision