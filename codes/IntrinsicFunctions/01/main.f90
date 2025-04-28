!https://www.tutorialspoint.com/fortran/fortran_file_input_output.htm
!Fortran - Intrinsic Functions
!Intrinsic functions are some common and important functions that are provided as a part of the Fortran language.
!We have already discussed some of these functions in the Arrays, Characters and String chapters.
!Example

program numericFunctions
implicit none  

   ! define constants  
   ! define variables
   real :: a, b 
   complex :: z
   
   ! values for a, b 
   a = 15.2345
   b = -20.7689
    
   write(*,*) 'abs(a): ',abs(a),' abs(b): ',abs(b)   
   write(*,*) 'aint(a): ',aint(a),' aint(b): ',aint(b) 
   write(*,*) 'ceiling(a): ',ceiling(a),' ceiling(b): ',ceiling(b)   
   write(*,*) 'floor(a): ',floor(a),' floor(b): ',floor(b)  
    
   z = cmplx(a, b)
   write(*,*) 'z: ',z   
   
end program numericFunctions