$ icc -c fonctions.c
$ ifort appelc.f90 fonctions.o -o appelc.exe
$ ./appelc.exe

chaîne finale                = chaîne_Fortran et chaine_c
longueur de la chaîne finale = 26
réel passé par adresse       = 100.0000
Cellule : 3.141593, 1756
Cellule : 2.718282, 1791

$ icx -c fonctions.c
$ ifort appelc.f90 fonctions.obj -o appelc.exe
$ ./appelc.exe