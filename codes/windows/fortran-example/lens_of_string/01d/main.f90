program test_string_length
  implicit none
  character(len=10) :: str
  character(len=10) :: str1
  
  str = "Hello"
  str1 = "Hello "  
  
  ! 输出声明长度
  print *, "Declared length of str:", len(str)
  print *, "Declared length of str1:", len(str1)
  
  ! 输出有效长度
  print *, "Effective length of str:", len_trim(str)
  print *, "Effective length of str1:", len_trim(str1)
  
end program test_string_length