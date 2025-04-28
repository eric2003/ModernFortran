program main_prog
implicit none
interface
    subroutine sub1()
    end subroutine sub1
    subroutine sub2()
    end subroutine sub2
end interface
    call sub1()
    call sub2()
end program main_prog
