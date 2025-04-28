!https://www.tutorialspoint.com/fortran/fortran_data_types.htm
!Integer Type
!The integer types can hold only integer values. The following example extracts the largest value that can be held in a usual four byte integer −

program testingInt
implicit none

   integer :: largeval
   print *, huge(largeval)
   
end program testingInt