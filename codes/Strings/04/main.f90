!https://www.tutorialspoint.com/fortran/fortran_strings.htm
!Left and Right Adjustment of Strings
!The function adjustl takes a string and returns it by removing the leading blanks and appending them as trailing blanks.
!The function adjustr takes a string and returns it by removing the trailing blanks and appending them as leading blanks.
!Example

program hello
implicit none

   character(len = 15) :: surname, firstname 
   character(len = 6) :: title 
   character(len = 40):: name
   character(len = 25):: greetings
   
   title = 'Mr. ' 
   firstname = 'Rowan' 
   surname = 'Atkinson'
   greetings = 'A big hello from Mr. Beans'
   
   name = adjustl(title)//adjustl(firstname)//adjustl(surname)
   print *, 'Here is', name
   print *, greetings
   
   name = adjustr(title)//adjustr(firstname)//adjustr(surname)
   print *, 'Here is', name
   print *, greetings
   
   name = trim(title)//trim(firstname)//trim(surname)
   print *, 'Here is', name
   print *, greetings
   
end program hello