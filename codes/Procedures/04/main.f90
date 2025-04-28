!https://www.tutorialspoint.com/fortran/fortran_file_input_output.htm
!Fortran - Procedures
!Recursive Procedures
!Recursion occurs when a programming languages allows you to call a function inside the same function. 
!It is called recursive call of the function.
!When a procedure calls itself, directly or indirectly, is called a recursive procedure. 
!You should declare this type of procedures by preceding the word recursive before its declaration.
!When a function is used recursively, the result option has to be used.
!Following is an example, which calculates factorial for a given number using a recursive procedure −

program calling_func
implicit none

   interface
      function myfactorial(n)
        integer :: myfactorial
        integer, intent (in) :: n     
      end function myfactorial
   end interface

   integer :: i, f
   i = 15
   
   Print *, "The value of factorial 15 is"
   f = myfactorial(15)
   Print *, f
   
end program calling_func

! computes the factorial of n (n!)      
recursive function myfactorial (n) result (fac)  
! function result     
implicit none     

   ! dummy arguments     
   integer :: fac     
   integer, intent (in) :: n     
   
   select case (n)         
      case (0:1)         
         fac = 1         
      case default    
         fac = n * myfactorial (n-1)  
   end select 
   
end function myfactorial