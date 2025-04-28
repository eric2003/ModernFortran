PROGRAM GetStringLength
  IMPLICIT NONE
  CHARACTER(LEN=10) :: str
  INTEGER :: length

  str = "Hello"
  length = LEN(str)
  PRINT *, "Length of str is:", length
END PROGRAM GetStringLength