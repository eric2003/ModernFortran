module appelC
  !use ISO_C_BINDING, only : C_INT
  interface
    subroutine sp() bind(C,name='fonction')
    end subroutine sp
  end interface
end module appelC
!
PROGRAM appel_c
  use appelC
  IMPLICIT NONE

  CALL sp()
  
END PROGRAM appel_c