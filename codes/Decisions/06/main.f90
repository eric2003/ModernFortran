!https://www.tutorialspoint.com/fortran/select_case_construct.htm
!A select case statement allows a variable to be tested for equality against a list of values.
!Each value is called a case, and the variable being selected on is checked for each select case.

program selectCaseProg
implicit none

   ! local variable declaration
   character :: grade = 'B'

   select case (grade)
   
      case ('A') 
      print*, "Excellent!" 

      case ('B')
      
      case ('C') 
         print*, "Well done" 

      case ('D')
         print*, "You passed" 

      case ('F')
         print*, "Better try again" 

      case default
         print*, "Invalid grade" 
      
   end select
   
   print*, "Your grade is ", grade 
 
end program selectCaseProg