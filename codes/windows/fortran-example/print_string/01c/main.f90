program print_string
  implicit none
  
  ! 声明字符串变量
  character(len=20) :: message
  
  ! 赋值
  message = "Hello, Fortran 90!"
  
  ! 输出字符串
  write(*, '(A)') trim(message)
  
end program print_string