program main
   call fortran_print_string("haha")
end program main

subroutine fortran_print_string(str)
    character(*) :: str
    print*,str
end subroutine fortran_print_string