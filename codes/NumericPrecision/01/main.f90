!https://www.tutorialspoint.com/fortran/fortran_numeric_precision.htm
!Fortran - Numeric Precision
!We have already discussed that, in older versions of Fortran, 
!there were two real types: the default real type and double precision type.
!However, Fortran 90/95 provides more control over the precision of real and integer data types through the kind specifie.
!The Kind Attribute
!Different kind of numbers are stored differently inside the computer. 
!The kind attribute allows you to specify how a number is stored internally. For example,
!real, kind = 2 :: a, b, c
!real, kind = 4 :: e, f, g
!integer, kind = 2 :: i, j, k
!integer, kind = 3 :: l, m, n
!In the above declaration, the real variables e, f and g have more precision than the real variables a, b and c. 
!The integer variables l, m and n, can store larger values and have more digits for storage than 
!the integer variables i, j and k. Although this is machine dependent.
!Example

program kindSpecifier
implicit none

   real(kind = 4) :: a, b, c
   real(kind = 8) :: e, f, g
   integer(kind = 2) :: i, j, k
   integer(kind = 4) :: l, m, n
   integer :: kind_a, kind_i, kind_e, kind_l
   
   kind_a = kind(a)
   kind_i = kind(i)
   kind_e = kind(e)
   kind_l = kind(l)
   
   print *,'default kind for real is', kind_a
   print *,'default kind for int is', kind_i
   print *,'extended kind for real is', kind_e
   print *,'default kind for int is', kind_l
   
end program kindSpecifier