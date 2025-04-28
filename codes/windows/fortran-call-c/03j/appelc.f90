module appelC
  use ISO_C_BINDING, only : C_INT
  interface
    subroutine sp() bind(C,name='fonction')
      import C_INT
    end subroutine sp
  end interface
end module appelC
!
PROGRAM appel_c
  use appelC
  IMPLICIT NONE
  INTEGER            :: lg_chaine = 0

  PRINT '(a,i0)'  ,'longueur de la chaine finale = ', lg_chaine
  CALL sp()
  PRINT *
  PRINT '(a,i0)'  ,'longueur de la chaine finale = ', lg_chaine
  
END PROGRAM appel_c