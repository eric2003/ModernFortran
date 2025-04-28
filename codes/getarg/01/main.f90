program main
  implicit none
  
  character(len=80) :: arg
  integer:: i, nargs

  ! find out how many command line arguments there are 
  nargs = iargc() 
  !c one at a time, get an argument and write it out 
  write(*,*) 'nargs=', nargs 
  do i = 1,nargs 
    call getarg( i, arg ) 
    print '(a)', arg 
  enddo
  
end program main