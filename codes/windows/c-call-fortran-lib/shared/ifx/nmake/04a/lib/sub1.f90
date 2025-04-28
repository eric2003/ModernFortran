subroutine sub1() bind(C, name='sub1')
!DEC$ ATTRIBUTES DLLEXPORT :: sub1   
implicit none

    print*,"haha1"
    
end subroutine sub1