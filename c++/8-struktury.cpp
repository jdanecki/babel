#include <stdio.h>
struct samochod
{
	const char * marka;
	int rok_produkcji;
};

void pokaz(struct samochod *s)
{
	printf("marka: %s\n", s->marka);
	printf("rok produkcji: %d\n", s->rok_produkcji);
}

int main()
{
	struct samochod volvo;
	
	volvo.marka = "volvo v40";
	volvo.rok_produkcji = 2010;

	pokaz(&volvo);
	return 0;
}
