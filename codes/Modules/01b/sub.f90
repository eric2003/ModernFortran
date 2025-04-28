module mymod  
implicit none 

  interface  
    subroutine print_haha() bind(C)
    end subroutine print_haha 
  end interface   
   
end module mymod 