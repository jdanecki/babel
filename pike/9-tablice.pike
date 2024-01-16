
#define rozmiar 10
#define rozmiar_x 2
#define rozmiar_y 5


int main()
{
	array(int) tablica=({});
	array(int) tablica1=allocate(rozmiar);
	//array(array(int)) kartka=({ ({}) });
	array(array(int)) kartka=allocate(rozmiar_x*rozmiar_y);
	
	for (int i= 0; i < rozmiar; i++) {
	   tablica+=({100+i});
	   tablica1[i]=100+i;
	   write("tablica[%d]=%d tablica1=%d -> %d %d\n", i, tablica[i],tablica1[i], sizeof(tablica),sizeof(tablica1));
	}

	for (int y=0; y < rozmiar_y; y++)
	{
		write("%d ", sizeof(kartka));
		kartka[y]=({0});
		for (int x=0; x < rozmiar_x; x++)
		{
			kartka[y]+=({0});
			kartka[y][x]= 10*y+x;
			write("kartka[%d][%d] = %d -> %d\n", y, x, kartka[y][x], sizeof(kartka));
		}
	}
	return 0;
}
