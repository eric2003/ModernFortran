!https://www.tutorialspoint.com/fortran/fortran_numbers.htm
!Complex Type
!This is used for storing complex numbers. A complex number has two parts : the real part and the imaginary part. 
!Two consecutive numeric storage units store these two parts.
!For example, the complex number (3.0, -5.0) is equal to 3.0 – 5.0i
!The generic function cmplx() creates a complex number. 
!It produces a result who’s real and imaginary parts are single precision, irrespective of the type of the input arguments.

program createComplex
implicit none

   integer :: i = 10
   real :: x = 5.17
   print *, cmplx(i, x)
   
end program createComplex