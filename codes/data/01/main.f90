program initialize_array
  implicit none
  integer, parameter :: iorder = 2
  real(8) :: coef(-1:iorder-1, 0:iorder-1)
  integer :: i, j

  data coef /1.5d0, -0.5d0, 0.5d0, 0.5d0, -0.5d0, 1.5d0/

  ! 打印数组以验证初始化
  do i = -1, iorder-1
     do j = 0, iorder-1
        print *, 'coef(', i, ',', j, ') = ', coef(i, j)
     end do
  end do
end program initialize_array