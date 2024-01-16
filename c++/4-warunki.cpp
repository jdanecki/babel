#include <stdio.h>

int main()
{
	int liczba1=2, liczba2=3;

	if (liczba1 < liczba2) printf("%d < %d -> %d\n", liczba1, liczba2, liczba1 < liczba2);
	printf("%d > %d -> %d\n", liczba1, liczba2, liczba1 > liczba2);
	
	printf("czy %d == %d? ", liczba1, liczba1);
	if (liczba1 == liczba1) puts("tak ");

	printf("czy %d != %d? ", liczba1, liczba2);
	if (liczba1 != liczba2) puts("tak");
		
	printf("czy to nieprawda, że %d == %d? ", liczba1, liczba2);
	if (!(liczba1 == liczba2)) puts("tak");
	
	printf("czy to prawda, że %d == %d -> %s ", liczba1, liczba1, liczba1 == liczba1 ? "tak" : "nie" );

	return 0;
}	
