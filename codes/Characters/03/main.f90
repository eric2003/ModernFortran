!https://www.tutorialspoint.com/fortran/fortran_characters.htm
!The Fortran language can treat characters as single character or contiguous strings.
!Characters could be any symbol taken from the basic character set, 
!i.e., from the letters, the decimal digits, the underscore, and 21 special characters.
!Example 1
!This example shows the use of the index function −

program testingChars
implicit none

   character (80) :: text 
   integer :: i 
   
   text = 'The intrinsic data type character stores characters and   strings.'
   i=index(text,'character') 
   
   if (i /= 0) then
      print *, ' The word character found at position ',i 
      print *, ' in text: ', text 
   end if
   
end program testingChars