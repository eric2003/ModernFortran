1、
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'
2、
cmake ../ -T fortran=ifx
3、
cmake --build .
4、
mpiexec -n 4 .\Debug\testprj.exe

&"c:/Program Files/Microsoft MPI/Bin/mpiexec.exe" -n 4 .\Debug\testprj.exe


PS D:\work\fortran_work\ModernFortran\codes\include\03b\build> &"c:/Program Files/Microsoft MPI/Bin/mpiexec.exe" -n 4 .\Debug\testprj.exe
 rank=            2 size=            4
 rank=            3 size=            4
 rank=            1 size=            4
 rank=            0 size=            4
