!https://www.tutorialspoint.com/fortran/fortran_numbers.htm
!The Kind Specifier
!In scientific programming, one often needs to know the range and precision of data of the hardware platform
!on which the work is being done.
!The intrinsic function kind() allows you to query the details
!of the hardware’s data representations before running a program.

program checkKind
implicit none

   integer :: i 
   real :: r 
   character :: c 
   logical :: lg 
   complex :: cp 
   
   print *,' Integer ', kind(i) 
   print *,' Real ', kind(r) 
   print *,' Complex ', kind(cp)
   print *,' Character ', kind(c) 
   print *,' Logical ', kind(lg)
   
end program checkKind