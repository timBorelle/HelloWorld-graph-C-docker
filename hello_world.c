#include<stdlib.h>
#include<graph.h>
 
int main()
{
	InitialiserGraphique();
	CreerFenetre(10,10,500,500);
	EcrireTexte(10,100,"Hello World !",2);
	Touche();
	FermerGraphique();
	return EXIT_SUCCESS;
}
