PROGRAM characters
 IMPLICIT NONE
 CHARACTER (LEN=*), PARAMETER :: headline="Man United will win the league?"
 CHARACTER (LEN=*), PARAMETER :: fname="Steve", lname="Smith"
 CHARACTER (LEN=11) :: fullname
 ! *** Example of concatenation of two strings ***
 fullname=fname//lname
 PRINT*,fullname
 !*** Concatenation of a string a character and a string ***
 fullname=fname//" "//lname
 PRINT*,fullname
 ! *** Example of a substring ***
 PRINT*,headline(5:10)
END PROGRAM characters