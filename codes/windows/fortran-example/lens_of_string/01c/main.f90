program test_string_length
  implicit none
  character(len=10) :: str = "Hello"
  
  print *, "Declared length (len):", len(str)         ! Êä³ö 10
  print *, "Effective length (len_trim):", len_trim(str)  ! Êä³ö 5
end program test_string_length