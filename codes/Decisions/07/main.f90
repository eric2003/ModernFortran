!https://www.tutorialspoint.com/fortran/select_case_construct.htm
!A select case statement allows a variable to be tested for equality against a list of values.
!Each value is called a case, and the variable being selected on is checked for each select case.
!Example 2

program selectCaseProg
implicit none

   ! local variable declaration
   integer :: marks = 78

   select case (marks)
   
      case (91:100) 
         print*, "Excellent!" 

      case (81:90)
         print*, "Very good!"

      case (71:80) 
         print*, "Well done!" 

      case (61:70)
         print*, "Not bad!" 

      case (41:60)
         print*, "You passed!"  

      case (:40)
         print*, "Better try again!"  

      case default
         print*, "Invalid marks" 
         
   end select
   print*, "Your marks is ", marks
 
end program selectCaseProg