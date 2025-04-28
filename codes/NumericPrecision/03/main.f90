!https://www.tutorialspoint.com/fortran/fortran_numeric_precision.htm
!Fortran - Numeric Precision
!Obtaining the Kind Value
!Fortran provides two more intrinsic functions to obtain the kind value for the required precision of integers and reals −
!selected_int_kind (r)
!selected_real_kind ([p, r])
!The selected_real_kind function returns an integer that is the kind type parameter value 
!necessary for a given decimal precision p and decimal exponent range r. 
!The decimal precision is the number of significant digits, 
!and the decimal exponent range specifies the smallest and largest representable number. 
!The range is thus from 10-r to 10+r.
!For example, selected_real_kind (p = 10, r = 99) returns the kind value needed for a precision of 10 decimal places,
!and a range of at least 10-99 to 10+99.
!Example

program getKind
implicit none

   integer:: i
   i = selected_real_kind (p = 10, r = 99) 
   print *,'selected_real_kind (p = 10, r = 99)', i
   
end program getKind