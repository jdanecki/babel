#include <stdio.h>

#define rozmiar 10
#define rozmiar_x 2
#define rozmiar_y 5


int main()
{
	int tablica[rozmiar];
	int kartka[rozmiar_y][rozmiar_x];
	
	for (int i= 0; i < rozmiar; i++) {
	   tablica[i] = 100+i;
	   printf("tablica[%d]=%d\n", i, tablica[i]);
	}

	for (int y=0; y < rozmiar_y; y++)
	{
		for (int x=0; x < rozmiar_x; x++)
		{
			kartka[y][x] = 10*y+x;
			printf("kartka[%d][%d] = %d\n", y, x, kartka[y][x]);
		}
	}
	return 0;
}
