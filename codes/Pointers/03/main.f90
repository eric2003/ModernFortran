!https://www.tutorialspoint.com/fortran/fortran_derived_data_types.htm
!Fortran - Pointers
!A pointer can be −
!Undefined
!Associated
!Disassociated
!In the above program, we have associated the pointer p1, with the target t1, using the => operator. 
!The function associated, tests a pointer’s association status.
!The nullify statement disassociates a pointer from a target.
!Nullify does not empty the targets as there could be more than one pointer pointing to the same target.
!However, emptying the pointer implies nullification also.
!Example 1
!The following example demonstrates the concepts −

program pointerExample
implicit none

   integer, pointer :: p1
   integer, target :: t1 
   integer, target :: t2
   
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
   
   nullify(p1)
   Print *, t1
   
   p1=>t2
   Print *, associated(p1)
   Print*, associated(p1, t1)
   Print*, associated(p1, t2)
   
   !what is the value of p1 at present
   Print *, p1
   Print *, t2
   
   p1 = 10
   Print *, p1
   Print *, t2
   
end program pointerExample