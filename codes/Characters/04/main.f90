!https://www.tutorialspoint.com/fortran/fortran_characters.htm
!The Fortran language can treat characters as single character or contiguous strings.
!Characters could be any symbol taken from the basic character set, 
!i.e., from the letters, the decimal digits, the underscore, and 21 special characters.
!Example 2
!This example demonstrates the use of the trim function −

program hello
implicit none

   character(len = 15) :: surname, firstname 
   character(len = 6) :: title 
   character(len = 25)::greetings
   
   title = 'Mr.' 
   firstname = 'Rowan' 
   surname = 'Atkinson'
   
   print *, 'Here is', title, firstname, surname
   print *, 'Here is', trim(title),' ',trim(firstname),' ', trim(surname)
   
end program hello