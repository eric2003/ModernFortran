!https://www.tutorialspoint.com/fortran/fortran_characters.htm
!The Fortran language can treat characters as single character or contiguous strings.
!Characters could be any symbol taken from the basic character set, 
!i.e., from the letters, the decimal digits, the underscore, and 21 special characters.
!A character constant is a fixed valued character string.
!The intrinsic data type character stores characters and strings. 
!The length of the string can be specified by len specifier. If no length is specified, it is 1. 
!You can refer individual characters within a string referring by position; the left most character is at position 1.

!Concatenation of Characters
!The concatenation operator //, concatenates characters.
!The following example demonstrates this −

program hello
implicit none

   character(len = 15) :: surname, firstname 
   character(len = 6) :: title 
   character(len = 40):: name
   character(len = 25)::greetings
   
   title = 'Mr. ' 
   firstname = 'Rowan ' 
   surname = 'Atkinson'
   
   name = title//firstname//surname
   greetings = 'A big hello from Mr. Bean'
   
   print *, 'Here is ', name
   print *, greetings
   
end program hello