program main
    implicit none
    integer, parameter :: iorder = 2
    real(8) :: coef(-1:iorder-1, 0:iorder-1)
    integer :: i

    ! 2nd-order coefficients
    !coef = reshape([1.5D0, -0.5D0, 0.5D0, 0.5D0, -0.5D0, 1.5D0], [iorder+1, iorder])
    coef = reshape([1.5D0, -0.5D0, 0.5D0, 0.5D0, -0.5D0, 1.5D0], [iorder+1, iorder], order = [2, 1])

    ! ´òÓ¡ coef Êý×é
    print *, 'Coefficients:'
    do i = -1, iorder-1
        print *, coef(i, :)
    end do

end program main