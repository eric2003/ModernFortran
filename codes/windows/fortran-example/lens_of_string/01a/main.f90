PROGRAM GetTrimmedLength
  IMPLICIT NONE
  CHARACTER(LEN=10) :: str
  INTEGER :: length, trimmedLength

  str = "Hello   "
  length = LEN(str)
  trimmedLength = LEN_TRIM(str)
  PRINT *, "Length of str is:", length
  PRINT *, "Trimmed length of str is:", trimmedLength
END PROGRAM GetTrimmedLength