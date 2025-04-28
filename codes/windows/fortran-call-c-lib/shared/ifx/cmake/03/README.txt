cmake ../ -T fortran=ifx
======================================================
cmake ../ -G "Ninja" -DCMAKE_C_COMPILER=icx -DCMAKE_Fortran_COMPILER=ifx

dumpbin /exports ./myshared.dll