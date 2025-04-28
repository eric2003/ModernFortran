cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'
cmake -G "Ninja" -D CMAKE_C_COMPILER=cl -D CMAKE_Fortran_COMPILER=ifx ../
cmake --build .
dumpbin /symbols ./mystatic.lib
dumpbin /exports ./myshared.dll