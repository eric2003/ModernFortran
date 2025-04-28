#include <string.h>
#include <stdlib.h>
#include <stdio.h>

 
void fonction( char  *chaine,
               int   *entier,
	       float *reel )
{
   strcat( chaine, " et chaine_c" );
  *entier = strlen( chaine );
  *reel   = 100.0;
}
 
typedef struct cel
{
  float r;
  int   n;
} Cellule;
 
/*
 *  Function returning the address of an object
 *  of type cell
 */
Cellule *creation_cel( float *r,
                       int   *n )
{
  Cellule *c = malloc( sizeof(Cellule) );
 
  c->r = *r; c->n = *n;
 
  return c;
}
 
void modif_cel( Cellule **c,
                float    *r,
                int      *n )
{
  (*c)->r = *r; (*c)->n = *n;
 
  return;
}
 
void imp_cel( Cellule **c )
{
  printf( "Cellule : %f, %d\n", (*c)->r, (*c)->n );
 
  return;
}
 
void libere_cel( Cellule **c )
{
  free( *c );
 
  return;
}