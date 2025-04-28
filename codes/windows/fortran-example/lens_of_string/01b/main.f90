PROGRAM GetStringSize
  IMPLICIT NONE
  CHARACTER(LEN=10) :: str
  INTEGER :: size

  str = "Hello"
  size = SIZE(str)
  PRINT *, "Size of str is:", size
END PROGRAM GetStringSize