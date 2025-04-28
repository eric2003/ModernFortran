!https://www.tutorialspoint.com/fortran/fortran_strings.htm
!Searching for a Substring in a String
!The index function takes two strings and checks if the second string is a substring of the first string. 
!If the second argument is a substring of the first argument, 
!then it returns an integer which is the starting index of the second string in the first string, else it returns zero.
!Example

program hello
implicit none

   character(len=30) :: myString
   character(len=10) :: testString
   
   myString = 'This is a test'
   testString = 'test'
   
   if(index(myString, testString) == 0)then
      print *, 'test is not found'
   else
      print *, 'test is found at index: ', index(myString, testString)
   end if
   
end program hello