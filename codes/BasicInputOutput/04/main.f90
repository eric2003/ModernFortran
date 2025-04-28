!https://www.tutorialspoint.com/fortran/fortran_basic_input_output.htm
!Fortran - Basic Input Output
!The Format Statement
!The format statement allows you to mix and match character, integer and real output in one statement. 
!The following example demonstrates this −

program productDetails 
implicit none 

   character (len = 15) :: name
   integer :: id 
   real :: weight
   name = 'Ardupilot'
   id = 1
   weight = 0.08
   
   print *,' The product details are' 
   
   print 100
   100 format (7x,'Name:', 7x, 'Id:', 1x, 'Weight:')
   
   print 200, name, id, weight 
   200 format(1x, a, 2x, i3, 2x, f5.2) 
   
end program productDetails