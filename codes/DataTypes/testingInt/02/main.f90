!https://www.tutorialspoint.com/fortran/fortran_data_types.htm
!Integer Type
!The integer types can hold only integer values. The following example extracts the largest value that can be held in a usual four byte integer −
!Note that the huge() function gives the largest number that can be held by the specific integer data type. You can also specify the number of bytes using the kind specifier. The following example demonstrates this −

program testingInt
implicit none

   !two byte integer
   integer(kind = 2) :: shortval
   
   !four byte integer
   integer(kind = 4) :: longval
   
   !eight byte integer
   integer(kind = 8) :: verylongval
   
   !sixteen byte integer
   integer(kind = 16) :: veryverylongval
   
   !default integer 
   integer :: defval
        
   print *, huge(shortval)
   print *, huge(longval)
   print *, huge(verylongval)
   print *, huge(veryverylongval)
   print *, huge(defval)
   
end program testingInt