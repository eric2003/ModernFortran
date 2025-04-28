cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'
#cmake -G "Ninja" -D CMAKE_C_COMPILER=cl -D CMAKE_Fortran_COMPILER=ifx ../
cmake -T fortran=ifx ../
cmake --build .
dumpbin /symbols ./Debug/mystatic.lib
.\Debug\testprj.exe
rm -Recurse -Force *
