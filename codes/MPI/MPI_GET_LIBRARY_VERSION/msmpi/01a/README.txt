1、
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'
2、
cmake ../ -T fortran=ifx
3、
cmake --build .
4、
mpiexec -n 4 .\Debug\testprj.exe

cmake ../ -T fortran=ifx -DMSMPI_FLAG=ON



-- Check for working Fortran compiler: C:/Program Files (x86)/Intel/oneAPI/compiler/2025.0/bin/ifx.exe - skipped
-- Found MPI_C: C:/Program Files (x86)/Intel/oneAPI/mpi/latest/lib/impi.lib (found version "3.1")
-- Found MPI_CXX: C:/Program Files (x86)/Intel/oneAPI/mpi/latest/lib/impi.lib (found version "3.1")
-- Found MPI_Fortran: C:/Program Files (x86)/Intel/oneAPI/mpi/latest/lib/impi.lib (found version "3.1")
-- Found MPI: TRUE (found version "3.1")
-- MPI_FOUND=TRUE