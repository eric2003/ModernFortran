cmake ../ -T fortran=ifx
dumpbin /symbols ./Debug/mystatic.lib

cmake ../ -T fortran=ifx
cmake ../ -DCMAKE_C_COMPILER=icx -DCMAKE_Fortran_COMPILER=ifx
============================================================================
1.
cmake ../ -G "Ninja" -DCMAKE_C_COMPILER=icx -DCMAKE_Fortran_COMPILER=ifx