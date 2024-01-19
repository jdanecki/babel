#!/usr/local/bin/pike
int main()
{
	int liczba1=2, liczba2=3;

	if (liczba1 < liczba2) write("%d < %d -> %d\n", liczba1, liczba2, liczba1 < liczba2);
	write("%d > %d -> %d\n", liczba1, liczba2, liczba1 > liczba2);
	
	write("czy %d == %d? ", liczba1, liczba1);
	if (liczba1 == liczba1) write("tak\n");

	write("czy %d != %d? ", liczba1, liczba2);
	if (liczba1 != liczba2) write("tak\n");
		
	write("czy to nieprawda, że %d == %d? ", liczba1, liczba2);
	if (!(liczba1 == liczba2)) write("tak\n");
	
	write("czy to prawda, że %d == %d -> %s ", liczba1, liczba1, liczba1 == liczba1 ? "tak" : "nie" );

	return 0;
}	
