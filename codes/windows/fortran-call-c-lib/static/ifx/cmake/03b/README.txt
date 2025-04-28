cmake ../ -T fortran=ifx
dumpbin /symbols ./Debug/mystatic.lib

cmake ../ -T fortran=ifx
cmake ../ -DCMAKE_C_COMPILER=icx -DCMAKE_Fortran_COMPILER=ifx
============================================================================
1、cmake ../ -G "Ninja" -DCMAKE_C_COMPILER=icx -DCMAKE_Fortran_COMPILER=ifx
============================================================================
1、cmake ../ -G "Ninja" -DCMAKE_C_COMPILER=icx -DCMAKE_Fortran_COMPILER=ifx

cmake ../ -T c=icx -T fortran=ifx

cmake -T c=cl -T cxx=cl

cmake ../ -T c=icx -T fortran=ifx
cmake ../ -T c=icx fortran=ifx
cmake ../ -T "c=icx fortran=ifx"
cmake ../ -T c=icx

cmake -G "Visual Studio 17 2022" -T v143 ../
cmake -G "Visual Studio 17 2022" -A x64 -T v143
cmake -G "Visual Studio 17 2022" -A Win32 -T v143
cmake -G "Visual Studio 17 2022" -T ClangCL
cmake -G Ninja -T "MSVC"
cmake -G "Unix Makefiles" -T "clang"

cmake ../ -G "Ninja" -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++
cmake ../ -G "Visual Studio 17 2022" -A x64 -T "Intel C++ Compiler 2023"

IntelLLVM
===============================
cmake -G "Visual Studio 17 2022" -A Win32

cmake -G "Visual Studio 17 2022" -A x64

cmake -G "Visual Studio 17 2022" -A ARM

cmake -G "Visual Studio 17 2022" -A ARM64
==================================