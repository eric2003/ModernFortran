module appelC
  use ISO_C_BINDING, only : C_CHAR, C_INT, C_FLOAT, C_PTR
  interface
    subroutine sp(chaine, lg_chaine) bind(C,name='fonction')
      import C_CHAR, C_INT, C_FLOAT
      character(kind=C_CHAR),dimension(*) :: chaine
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
  CHARACTER(len=40)  :: chaine    = 'chaine_Fortran'//C_NULL_CHAR

  PRINT '(2a)'    ,'chaine finale                = ', chaine
  PRINT '(a,i0)'  ,'longueur de la chaine finale = ', lg_chaine
  CALL sp( chaine, lg_chaine)
  PRINT *
  PRINT '(2a)'    ,'chaine finale                = ', chaine
  PRINT '(a,i0)'  ,'longueur de la chaine finale = ', lg_chaine
  
END PROGRAM appel_c