module sub_module
use iso_c_binding
implicit none
contains
    subroutine sub() bind(C, name="sub")
		print*,"haha"
    end subroutine sub
end module sub_module