program main
    use mpi
    implicit none
    integer :: ierr, rank, resultlen
    character(len=MPI_MAX_LIBRARY_VERSION_STRING) :: version

    ! Initialize MPI
    call MPI_INIT(ierr)
    if (ierr /= MPI_SUCCESS) stop 'MPI_INIT failed'

    ! Get rank
    call MPI_COMM_RANK(MPI_COMM_WORLD, rank, ierr)

    ! Get MPI library version
    call MPI_GET_LIBRARY_VERSION(version, resultlen, ierr)
    if (ierr /= MPI_SUCCESS) stop 'MPI_GET_LIBRARY_VERSION failed'

    ! Print version from rank 0
    if (rank == 0) then
        print *, 'MPI Library Version: ', trim(version)
        print *, 'Version string length: ', resultlen
    endif

    ! Finalize MPI
    call MPI_FINALIZE(ierr)
end program main


