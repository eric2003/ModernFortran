!https://www.tutorialspoint.com/fortran/fortran_derived_data_types.htm
!Fortran - Pointers
!Targets and Association
!A target is another normal variable, with space set aside for it. 
!A target variable must be declared with the target attribute.
!You associate a pointer variable with a target variable using the association operator (=>).
!Let us rewrite the previous example, to demonstrate the concept −

program pointerExample
implicit none

   integer, pointer :: p1
   integer, target :: t1 
   
   p1=>t1
   p1 = 1
   
   Print *, p1
   Print *, t1
   
   p1 = p1 + 4
   
   Print *, p1
   Print *, t1
   
   t1 = 8
   
   Print *, p1
   Print *, t1
   
end program pointerExample