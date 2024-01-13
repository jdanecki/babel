#include <stdio.h>
// komentarz

/* 
 * długi komentarz
 * na kilka linii
 */

int main()
{
	char * string ="hello";
	int liczba=123;
	char znak='a';
	int * wskaznik=&liczba;
	enum miesiac {
		styczen,
		luty,
		maj=5};

	printf("string=%s liczba=%d znak=%c wskaźnik=%p wartość pod wskaźnikiem=%d\n", string, liczba, znak, wskaznik, *wskaznik);
	*wskaznik = 456;
	printf("string=%s liczba=%d znak=%c wskaźnik=%p wartość pod wskaźnikiem=%d\n", string, liczba, znak, wskaznik, *wskaznik);

	enum miesiac s=styczen;
	enum miesiac m = maj;

	printf("miesiące:  styczen=%d maj=%d\n",s, m);
	return 0;
}
