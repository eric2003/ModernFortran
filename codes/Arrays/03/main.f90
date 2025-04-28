!https://www.tutorialspoint.com/fortran/fortran_arrays.htm
!Passing Arrays to Procedures
!You can pass an array to a procedure as an argument. The following example demonstrates the concept −
!In the above example, the subroutine fillArray and printArray can only be called with arrays with dimension 5.
!However, to write subroutines that can be used for arrays of any size, you can rewrite it using the following technique −

program arrayToProcedure      
implicit  none    

   integer, dimension (10) :: myArray  
   integer :: i
   
   interface 
      subroutine fillArray (a)
         integer, dimension(:), intent (out) :: a 
         integer :: i         
      end subroutine fillArray      

      subroutine printArray (a)
         integer, dimension(:) :: a 
         integer :: i         
      end subroutine printArray   
   end interface 
   
   call fillArray (myArray)      
   call printArray(myArray)
   
end program arrayToProcedure


subroutine fillArray (a)      
implicit none      
   integer,dimension (:), intent (out) :: a      
   
   ! local variables     
   integer :: i, arraySize  
   arraySize = size(a)
   
   do i = 1, arraySize         
      a(i) = i      
   end do  
   
end subroutine fillArray 


subroutine printArray(a)
implicit none

   integer,dimension (:) :: a  
   integer::i, arraySize
   arraySize = size(a)
   
   do i = 1, arraySize
     Print *, a(i)
   end do
   
end subroutine printArray