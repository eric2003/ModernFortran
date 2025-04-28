PROGRAM characters2
 IMPLICIT NONE
 CHARACTER (LEN=*), PARAMETER :: fname="Wayne", lname="Rooney"
 CHARACTER (LEN=20) :: fullname !** NOTE 20 characters!!!
 fullname=fname//" "//lname !** Concatenation
 PRINT*,fullname," will score in Euro-2004!"
 PRINT*,TRIM(fullname)," will score in Euro-2004!"
END PROGRAM characters2