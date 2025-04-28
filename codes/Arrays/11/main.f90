!https://www.tutorialspoint.com/fortran/reshape.htm
!Fortran - Reshape Functions
!Example
!The following example demonstrates the concept −

program arrayReshape
implicit none

interface
   subroutine write_matrix(a)
   real, dimension(:,:) :: a
   end subroutine write_matrix
   end interface

   real, dimension (1:9) :: b = (/ 21, 22, 23, 24, 25, 26, 27, 28, 29 /)
   real, dimension (1:3, 1:3) :: c, d, e
   real, dimension (1:4, 1:4) :: f, g, h

   integer, dimension (1:2) :: order1 = (/ 1, 2 /)
   integer, dimension (1:2) :: order2 = (/ 2, 1 /)
   real, dimension (1:16) :: pad1 = (/ -1, -2, -3, -4, -5, -6, -7, -8, &
                                 & -9, -10, -11, -12, -13, -14, -15, -16 /)

   c = reshape( b, (/ 3, 3 /) )
   call write_matrix(c)

   d = reshape( b, (/ 3, 3 /), order = order1)
   call write_matrix(d)

   e = reshape( b, (/ 3, 3 /), order = order2)
   call write_matrix(e)

   f = reshape( b, (/ 4, 4 /), pad = pad1)
   call write_matrix(f)

   g = reshape( b, (/ 4, 4 /), pad = pad1, order = order1)
   call write_matrix(g)

   h = reshape( b, (/ 4, 4 /), pad = pad1, order = order2)
   call write_matrix(h)

end program arrayReshape


subroutine write_matrix(a)
   real, dimension(:,:) :: a
   write(*,*)
   
   do i = lbound(a,1), ubound(a,1)
      write(*,*) (a(i,j), j = lbound(a,2), ubound(a,2))
   end do
end subroutine write_matrix