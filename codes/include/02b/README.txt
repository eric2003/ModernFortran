1、
cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'
2、
cmake ../ -T fortran=ifx
3、
cmake --build .
4、
mpiexec -n 4 .\Debug\testprj.exe
