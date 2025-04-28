!https://www.tutorialspoint.com/fortran/nested_select_case_construct.htm
!You can use one select case statement inside another select case statement(s).

program nestedSelectCase
   ! local variable definition 
   integer :: a = 100
   integer :: b = 200
 
   select case(a) 
      case (100) 
         print*, "This is part of outer switch", a 
         
      select case(b) 
         case (200)
            print*, "This is part of inner switch", a 
      end select
      
   end select
   
   print*, "Exact value of a is : ", a 
   print*, "Exact value of b is : ", b 
 
end program nestedSelectCase