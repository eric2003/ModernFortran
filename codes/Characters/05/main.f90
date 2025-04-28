!https://www.tutorialspoint.com/fortran/fortran_characters.htm
!The Fortran language can treat characters as single character or contiguous strings.
!Characters could be any symbol taken from the basic character set, 
!i.e., from the letters, the decimal digits, the underscore, and 21 special characters.
!Example 3
!This example demonstrates the use of achar function −

program testingChars
implicit none

   character:: ch
   integer:: i
   
   do i = 65, 90
      ch = achar(i)
      print*, i, ' ', ch
   end do
   
end program testingChars