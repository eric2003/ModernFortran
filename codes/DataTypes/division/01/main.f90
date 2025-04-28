!https://www.tutorialspoint.com/fortran/fortran_data_types.htm
!Real Type
!It stores the floating point numbers, such as 2.0, 3.1415, -100.876, etc.
!Traditionally there are two different real types, the default real type and double precision type.
!However, Fortran 90/95 provides more control over the precision of real and integer data types through the kind specifier, which we will study in the chapter on Numbers.
!The following example shows the use of real data type −

program division   
implicit none  

   ! Define real variables   
   real :: p, q, realRes 
   
   ! Define integer variables  
   integer :: i, j, intRes  
   
   ! Assigning  values   
   p = 2.0 
   q = 3.0    
   i = 2 
   j = 3  
   
   ! floating point division
   realRes = p/q  
   intRes = i/j
   
   print *, realRes
   print *, intRes
   
end program division  