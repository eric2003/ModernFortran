#include <string.h>
#include <stdlib.h>
#include <stdio.h>

 
void fonction( char  *chaine,
               int   *entier,
	       float *reel )
{
   strcat( chaine, " et chaine_c" );
  //*entier = strlen( chaine );
  *entier = 1234;
  *reel   = 100.0;
}