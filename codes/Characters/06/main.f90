!https://www.tutorialspoint.com/fortran/fortran_characters.htm
!The Fortran language can treat characters as single character or contiguous strings.
!Characters could be any symbol taken from the basic character set, 
!i.e., from the letters, the decimal digits, the underscore, and 21 special characters.
!Checking Lexical Order of Characters
!Example 4
!The following function demonstrates the use −

program testingChars
implicit none

   character:: a, b, c
   a = 'A'
   b = 'a'
   c = 'B'
   
   if(lgt(a,b)) then
      print *, 'A is lexically greater than a'
   else
      print *, 'a is lexically greater than A'
   end if
   
   if(lgt(a,c)) then
      print *, 'A is lexically greater than B'
   else
      print *, 'B is lexically greater than A'
   end if  
   
   if(llt(a,b)) then
      print *, 'A is lexically less than a'
   end if
   
   if(llt(a,c)) then
      print *, 'A is lexically less than B'
   end if
   
end program testingChars