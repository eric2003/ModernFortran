subroutine sub2() bind(C, name='sub2')
!DEC$ ATTRIBUTES DLLEXPORT :: sub2   
implicit none

    print*,"haha2"
    
end subroutine sub2