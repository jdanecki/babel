// komentarz

/* 
 * długi komentarz
 * na kilka linii
 */

int main()
{
	string str="hello";
	int liczba=123;
	string znak="a";
	enum miesiac {
		styczen=0,
		luty=1,
		maj=5,
		czerwiec=6
	};

	write("string=%s liczba=%d znak=%s \n", str, liczba, znak);

	miesiac s=styczen;
	miesiac m = maj;
	miesiac c = czerwiec;

	write("miesiące:  styczen=%d maj=%d czerwiec=%d\n",s, m, c);

	return 0;
}
