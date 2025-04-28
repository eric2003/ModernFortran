!https://www.tutorialspoint.com/fortran/fortran_strings.htm
!Trimming Strings
!The trim function takes a string, and returns the input string after removing all trailing blanks.
!Example

program trimString
implicit none

   character (len = *), parameter :: fname="Susanne", sname="Rizwan"
   character (len = 20) :: fullname 
   
   fullname = fname//" "//sname !concatenating the strings
   
   print*,fullname,", the beautiful dancer from the east!"
   print*,trim(fullname),", the beautiful dancer from the east!"
   
end program trimString