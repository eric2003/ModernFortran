module appelC
  use ISO_C_BINDING, only : C_INT
  interface
    subroutine sp(lg_chaine) bind(C,name='fonction')
      import C_INT
      integer(kind=C_INT)                 :: lg_chaine
    end subroutine sp
  end interface
end module appelC
!
PROGRAM appel_c
  use appelC
  IMPLICIT NONE
  INTEGER            :: lg_chaine = 0

  PRINT '(a,i0)'  ,'longueur de la chaine finale = ', lg_chaine
  CALL sp( lg_chaine)
  PRINT *
  PRINT '(a,i0)'  ,'longueur de la chaine finale = ', lg_chaine
  
END PROGRAM appel_c