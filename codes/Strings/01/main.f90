!https://www.tutorialspoint.com/fortran/fortran_strings.htm
!Extracting Substrings
!In Fortran, you can extract a substring from a string by indexing the string, 
!giving the start and the end index of the substring in a pair of brackets. 
!This is called extent specifier.
!The following example shows how to extract the substring ‘world’ from the string ‘hello world’ −

program subString

   character(len = 11)::hello
   hello = "Hello World"
   print*, hello(7:11)
   
end program subString 