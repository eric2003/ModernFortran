subroutine print_character(str,i) bind(C, name='for_print_character')
    use iso_c_binding, only: C_CHAR, c_null_char
    !character (len=1), dimension (10), intent (in) :: str
    character (kind=C_CHAR, len=1), dimension (20), intent (in) :: str
    integer, intent(in) :: i
    integer :: iilen
    integer :: jjlen
    write(*, '(A)') str
    iilen = len(str)
    jjlen = size(str)
    print *,"iilen=",iilen
	print *,"jjlen=",jjlen
	do ii = 1,5
	   write (*,'(A)',advance='no'),str(ii)
	enddo
	write (*,*)
	
	do ii = 1,jjlen
	   write (*,'(A)',advance='no'),str(ii)
	enddo
	write (*,*)	

    print *,"i=",i
    print *,"haha"
end subroutine print_character