! main.f90
program main
    implicit none
    include 'a.h'
    include 'mpif.h'
	integer :: rank, size, len, ierr
    character(len=MPI_MAX_LIBRARY_VERSION_STRING) :: version	
    real :: radius, circumference

    radius = 5.0
    circumference = 2.0 * pi * radius

    print *, 'Circumference:', circumference
end program main