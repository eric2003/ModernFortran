cmd.exe "/K" '"C:\Program Files (x86)\Intel\oneAPI\setvars.bat" && powershell'

ifort -c .\main.f90 -o main.o
ifort main.o -o main
ifort .\main.f90
-------------------------------
ifort main.f90 sub1.f90 sub2.f90
ifort sub1.f90 sub2.f90 main.f90
----------------------------------------------
PS D:\work\fortran_work\ModernFortran\codes\windows\04> ifort main.f90 sub1.f90 sub2.f90
Intel(R) Fortran Intel(R) 64 Compiler Classic for applications running on Intel(R) 64, Version 2021.10.0 Build 20230609_000000
Copyright (C) 1985-2023 Intel Corporation.  All rights reserved.

Microsoft (R) Incremental Linker Version 14.37.32825.0
Copyright (C) Microsoft Corporation.  All rights reserved.

-out:main.exe
-subsystem:console
main.obj
sub1.obj
sub2.obj
PS D:\work\fortran_work\ModernFortran\codes\windows\04> ls


    目录: D:\work\fortran_work\ModernFortran\codes\windows\04


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         2023/11/1      2:03         564224 main.exe
-a----        2023/10/22      9:52             94 main.f90
-a----         2023/11/1      2:03            961 main.obj
-a----         2023/11/1      2:02            198 README.txt
-a----        2023/10/22      9:51             82 sub1.f90
-a----         2023/11/1      2:03            919 sub1.obj
-a----        2023/10/22      9:52             82 sub2.f90
-a----         2023/11/1      2:03            919 sub2.obj
---------------------------------------------------------------
ifort main.f90 sub1.f90 sub2.f90 -o main