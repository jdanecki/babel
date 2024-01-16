class samochod
{
	string marka;
	int rok_produkcji;
};

void pokaz(samochod s)
{
	write("marka: %s\n", s->marka);
	write("rok produkcji: %d\n", s->rok_produkcji);
}

int main()
{
	samochod volvo = samochod();
	samochod matiz;
	
	volvo->marka = "volvo v40";
	volvo->rok_produkcji = 2010;

	pokaz(volvo);
	
	matiz=samochod();
	matiz->marka="matiz";
	matiz->rok_produkcji=2007;

	pokaz(matiz);

	return 0;
}
