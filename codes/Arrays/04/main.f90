!https://www.tutorialspoint.com/fortran/fortran_arrays.htm
!Array Sections
!So far we have referred to the whole array, Fortran provides an easy way to refer several elements, 
!or a section of an array, using a single statement.
!To access an array section, you need to provide the lower and the upper bound of the section, 
!as well as a stride (increment), for all the dimensions. This notation is called a subscript triplet:
!array ([lower]:[upper][:stride], ...)
!When no lower and upper bounds are mentioned, it defaults to the extents you declared, and stride value defaults to 1.
!The following example demonstrates the concept −

program arraySubsection

   real, dimension(10) :: a, b
   integer:: i, asize, bsize
   
   a(1:7) = 5.0 ! a(1) to a(7) assigned 5.0
   a(8:) = 0.0  ! rest are 0.0 
   b(2:10:2) = 3.9
   b(1:9:2) = 2.5
   
   !display
   asize = size(a)
   bsize = size(b)
   
   do i = 1, asize
      Print *, a(i)
   end do
   
   do i = 1, bsize
      Print *, b(i)
   end do
   
end program arraySubsection