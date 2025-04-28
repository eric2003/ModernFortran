#include <string.h>
#include <stdlib.h>
#include <stdio.h>

 
void fonction( char  *chaine,
               int   *entier)
{
   strcat( chaine, " et chaine_c" );
  *entier = 1234;
}