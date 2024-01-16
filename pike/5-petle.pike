int main()
{
	int b, c, d, e, f, g=0;
	for (int i=0; i < 10; i++)
	{
		write("i=%d\n", i);
		b=i;
	}

	write("start: b=i=%d\n", b);
	for (; b < 20; )
		write("b++=%d\n", b++);
	
	write("start: c=b=%d\n", b);
	for (c=b; c < 30; )
		write("++c=%d\n", ++c);
	
	write("start: d=c, e=c=%d\n", c);
	for (d=c, e=c; d < 40; )
		write("++d=%d e++=%d\n", ++d, e++);
	
	f=e;
	write("start: f=e=%d\n", e);
	while (e < 50)
	{
		write("++e=%d e--=%d f--=%d ++f=%d\n", ++e, e--, f--, ++f);
		g++;
		if (g > 10) break;
	}
	
	write("start: g=%d\n", g);
	do {
		write("g--=%d\n", g--);
	} while(g > 0 );


	for (int h=0; h < 10; h++)
	{
		if (h == 4) {
			write("mam 4");			
			continue;
		}
		if (h==5) {
			write("skok w bok: %d\n", h);		
			continue;
		}

		switch(h)
		{
			case 1: write("jeden\n"); break;
			default: write("coś innego niż 1, bo %d\n", h); break;
		}
	}

	array(string) tablica=({"ala", "ma", "kota"});
	foreach(tablica, string r)
	{ 
		write(r + " ");
	}
	return 0;
}	
