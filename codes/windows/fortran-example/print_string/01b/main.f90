 PROGRAM characters3
 IMPLICIT NONE
 CHARACTER (LEN=*), PARAMETER :: fname="    Paul", lname="Scholes"
 CHARACTER (LEN=20) :: fullname
 
 fullname=fname//" "//lname
 
 PRINT*,fullname," will score in Euro-2004!"
 PRINT*,TRIM(fullname)," will score in Euro-2004!"
 PRINT*,TRIM(ADJUSTL(fullname))," will score in Euro-2004!"
 END PROGRAM characters3