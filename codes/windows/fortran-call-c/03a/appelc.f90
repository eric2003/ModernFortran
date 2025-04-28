module appelC
  use ISO_C_BINDING, only : C_CHAR, C_INT, C_FLOAT, C_PTR
  interface
    subroutine sp(lg_chaine, reel ) bind(C,name='fonction')
      import C_INT, C_FLOAT
      integer(kind=C_INT)                 :: lg_chaine
      real(kind=C_FLOAT)                  :: reel
    end subroutine sp
  end interface
end module appelC
!
PROGRAM appel_c
  use appelC
  use ISO_C_BINDING, only : C_NULL_CHAR
  IMPLICIT NONE
  INTEGER            :: lg_chaine = 0
  REAL               :: reel      = 0.0

  PRINT '(a,i0)'  ,'longueur de la chaine finale = ', lg_chaine
  PRINT '(a,f0.4)','reel passe par adresse       = ', reel
  CALL sp( lg_chaine, reel )
  PRINT *
  PRINT '(a,i0)'  ,'longueur de la chaine finale = ', lg_chaine
  PRINT '(a,f0.4)','reel passe par adresse       = ', reel
  
END PROGRAM appel_c