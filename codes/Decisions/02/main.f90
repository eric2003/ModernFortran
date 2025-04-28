!https://www.tutorialspoint.com/fortran/If_then_construct.htm
!An if… then statement consists of a logical expression followed by one or more statements and terminated by an end if statement.

program markGradeA  
implicit none  
   real :: marks
   ! assign marks   
   marks = 90.4
   ! use an if statement to give grade
  
   gr: if (marks > 90.0) then  
   print *, " Grade A"
   end if gr
end program markGradeA   