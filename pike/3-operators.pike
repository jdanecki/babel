#!/usr/local/bin/pike

int main()
{
	int liczba1=2, liczba2=3;

	write("%d + %d=%d\n", liczba1, liczba2, liczba1 + liczba2);
	write("%d - %d=%d\n", liczba1, liczba2, liczba1 - liczba2);
	write("%d * %d=%d\n", liczba1, liczba2, liczba1 * liczba2);
	write("%d / %d=%d\n", liczba1, liczba2, liczba1 / liczba2);
	write("%d / %d=%f\n", liczba1, liczba2, 1.0 * liczba1 / liczba2);

	return 0;
}
