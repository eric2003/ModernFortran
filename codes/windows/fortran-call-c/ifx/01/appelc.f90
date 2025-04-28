module appelC
  use ISO_C_BINDING, only : C_CHAR, C_INT, C_FLOAT, C_PTR
  type, bind(C) :: cel
    real(kind=C_FLOAT)  :: r
    integer(kind=C_INT) :: n
  end type cel
  interface
    subroutine sp(chaine, lg_chaine, reel ) bind(C,name='fonction')
      import C_CHAR, C_INT, C_FLOAT
      character(kind=C_CHAR),dimension(*) :: chaine
      integer(kind=C_INT)                 :: lg_chaine
      real(kind=C_FLOAT)                  :: reel
    end subroutine sp
    !
    type(C_PTR) function creat( r, n ) bind(C,name='creation_cel')
      import C_INT, C_FLOAT, C_PTR
      real(kind=C_FLOAT)  :: r
      integer(kind=C_INT) :: n
    end function creat
    !
    subroutine modif( cel, r, n ) bind(C,name='modif_cel')
      import C_INT, C_FLOAT, C_PTR
      type(C_PTR)         :: cel
      real(kind=C_FLOAT)  :: r
      integer(kind=C_INT) :: n
    end subroutine modif
    !
    subroutine imp( cel ) bind(C,name='imp_cel')
      import C_PTR
      type(C_PTR) :: cel
    end subroutine imp
    !
    subroutine libere( cel ) bind(C,name='libere_cel')
      import C_PTR
      type(C_PTR) :: cel
    end subroutine libere
  end interface
end module appelC
!
PROGRAM appel_c
  use ISO_C_BINDING, only : C_PTR, C_F_POINTER, C_NULL_CHAR
  use appelC
  IMPLICIT NONE
  INTEGER            :: lg_chaine = 0
  REAL               :: reel      = 0.0
  CHARACTER(len=40)  :: chaine    = 'chaine_Fortran'//C_NULL_CHAR
  !
  ! The following type is necessary for using the C address
  type(C_PTR)        :: cellule
  type(cel), pointer :: p_cel
  CALL sp( chaine, lg_chaine, reel )
  ! Deletion of the character "C_NULL_CHAR"
  chaine = chaine(1:lg_chaine)
  PRINT '(2a)'    ,'chaine finale                = ', chaine
  PRINT '(a,i0)'  ,'longueur de la chaine finale = ', lg_chaine
  PRINT '(a,f0.4)','reel passe par adresse       = ', reel
  cellule = creat( acos(-1.), 1756 )
  call C_F_POINTER( CPTR=cellule, FPTR=p_cel )
  call imp( cellule )
  call modif( cellule, exp(1.), 1791 )
  call imp( cellule )
  call libere( cellule )
END PROGRAM appel_c