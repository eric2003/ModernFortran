!https://www.tutorialspoint.com/fortran/fortran_file_input_output.htm
!Fortran - Modules
!Accessibility of Variables and Subroutines in a Module
!By default, all the variables and subroutines in a module 
!is made available to the program that is using the module code, by the use statement.
!However, you can control the accessibility of module code using the private and public attributes. 
!When you declare some variable or subroutine as private, it is not available outside the module.
!Example
!The following example illustrates the concept −
!In the previous example, we had two module variables, e and pi. Let us make them private and observe the output −

module constants  
implicit none 

   real, parameter,private :: pi = 3.1415926536  
   real, parameter, private :: e = 2.7182818285 
   
contains      
   subroutine show_consts()          
      print*, "Pi = ", pi          
      print*, "e = ", e     
   end subroutine show_consts 
   
end module constants 


program module_example     
use constants      
implicit none     

   real :: x, ePowerx, area, radius 
   x = 2.0
   radius = 7.0
   ePowerx = e ** x
   area = pi * radius**2     
   
   call show_consts() 
   
   print*, "e raised to the power of 2.0 = ", ePowerx
   print*, "Area of a circle with radius 7.0 = ", area  
   
end program module_example