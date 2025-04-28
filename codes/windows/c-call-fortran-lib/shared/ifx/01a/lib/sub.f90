subroutine sub() bind(C, name='sub')
!DEC$ ATTRIBUTES DLLEXPORT:: sub
implicit none

    print*,"haha"
    
end subroutine sub