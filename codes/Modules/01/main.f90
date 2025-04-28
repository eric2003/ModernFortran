!https://www.tutorialspoint.com/fortran/fortran_file_input_output.htm
!Fortran - Modules
!A module is like a package where you can keep your functions and subroutines, in case you are writing a very big program, or your functions or subroutines can be used in more than one program.
!Modules provide you a way of splitting your programs between multiple files.
!Modules are used for −
!Packaging subprograms, data and interface blocks.
!Defining global data that can be used by more than one routine.
!Declaring variables that can be made available within any routines you choose.
!Importing a module entirely, for use, into another program or subroutine.
!Example
!The following example demonstrates the concept −

module constants  
implicit none 

   real, parameter :: pi = 3.1415926536  
   real, parameter :: e = 2.7182818285 
   
contains      
   subroutine show_consts()          
      print*, "Pi = ", pi          
      print*,  "e = ", e     
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