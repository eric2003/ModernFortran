  program f_prog
    character(len=10) :: str
    str = "hello"
    call c_print_string(trim(str)//char(0))
  end program f_prog