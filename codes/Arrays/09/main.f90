!https://www.tutorialspoint.com/fortran/inquiry.htm
!Fortran - Inquiry Functions
!Example
!The following example demonstrates the concept −

program arrayInquiry

   real, dimension(3,2) :: a 
   a = reshape( (/5,9,6,10,8,12/), (/3,2/) ) 
   
   Print *, lbound(a, dim = 1)
   Print *, ubound(a, dim = 1)
   Print *, shape(a)
   Print *, size(a,dim = 1)
   
end program arrayInquiry