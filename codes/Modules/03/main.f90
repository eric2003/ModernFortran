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
!Since e and pi, both are declared private, the program module_example cannot access these variables anymore.
!However, other module subroutines can access them −

module constants  
implicit none 

   real, parameter,private :: pi = 3.1415926536  
   real, parameter, private :: e = 2.7182818285 
   
contains      
   subroutine show_consts()          
      print*, "Pi = ", pi          
      print*, "e = ", e     
   end subroutine show_consts 
   
   function ePowerx(x)result(ePx) 
   implicit none
      real::x
      real::ePx
      ePx = e ** x
   end function ePowerx
    
   function areaCircle(r)result(a)  
   implicit none
      real::r
      real::a
      a = pi * r**2  
   end function areaCircle
    
end module constants 


program module_example     
use constants      
implicit none     

   call show_consts() 
   
   Print*, "e raised to the power of 2.0 = ", ePowerx(2.0)
   print*, "Area of a circle with radius 7.0 = ", areaCircle(7.0)  
   
end program module_example