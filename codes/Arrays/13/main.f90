!https://www.tutorialspoint.com/fortran/manipulation.htm
!Fortran - Manipulation Functions
!Example
!The following example demonstrates transpose of a matrix −

program matrixTranspose
implicit none

   interface
      subroutine write_matrix(a)
         integer, dimension(:,:) :: a
      end subroutine write_matrix
   end interface

   integer, dimension(3,3) :: a, b
   integer :: i, j
    
   do i = 1, 3
      do j = 1, 3
         a(i, j) = i
      end do
   end do
   
   print *, 'Matrix Transpose: A Matrix'
   
   call write_matrix(a)
   b = transpose(a)
   print *, 'Transposed Matrix:'
   
   call write_matrix(b)
end program matrixTranspose


subroutine write_matrix(a)

   integer, dimension(:,:) :: a
   write(*,*)
   
   do i = lbound(a,1), ubound(a,1)
      write(*,*) (a(i,j), j = lbound(a,2), ubound(a,2))
   end do
   
end subroutine write_matrix