program main
    use mpi
    implicit none
	integer :: rank, size, len, ierr
    character(len=MPI_MAX_LIBRARY_VERSION_STRING) :: version

	! Initialize MPI
	call MPI_INIT(ierr)
	if (ierr /= MPI_SUCCESS) stop 'MPI_INIT failed'
	
	! Get rank and size
	call MPI_COMM_RANK(MPI_COMM_WORLD, rank, ierr)
	call MPI_COMM_SIZE(MPI_COMM_WORLD, size, ierr)
	
	! Get MPI library version
	call MPI_GET_LIBRARY_VERSION(version, len, ierr)
	if (ierr /= MPI_SUCCESS) stop 'MPI_GET_LIBRARY_VERSION failed'
	
	write(*, '(A,I0,A,I0,A,A,A,I0,A)') 'Hello, world!  I am ', rank, ' of ', size, &
	' (', trim(version), ', ', len, ')'

    ! Finalize MPI
    call MPI_FINALIZE(ierr)
end program main
