program f_prog
INTERFACE
  SUBROUTINE c_print_string(str) BIND(C)
    USE, INTRINSIC :: ISO_C_BINDING
    IMPLICIT NONE
    character(len=10) :: str
  END SUBROUTINE c_print_string
END INTERFACE

character(len=10) :: str
str = "hello"

call c_print_string(trim(str)//char(0))
end program f_prog
