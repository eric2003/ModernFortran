!https://www.tutorialspoint.com/fortran/fortran_derived_data_types.htm
!Fortran - Pointers
!Declaring a Pointer Variable
!A pointer variable is declared with the pointer attribute.
!The following examples shows declaration of pointer variables −
!integer, pointer :: p1 ! pointer to integer  
!real, pointer, dimension (:) :: pra ! pointer to 1-dim real array  
!real, pointer, dimension (:,:) :: pra2 ! pointer to 2-dim real array

!Allocating Space for a Pointer
!The allocate statement allows you to allocate space for a pointer object. For example −

program pointerExample
implicit none

   integer, pointer :: p1
   allocate(p1)
   
   p1 = 1
   Print *, p1
   
   p1 = p1 + 4
   Print *, p1
   
end program pointerExample