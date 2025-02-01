#!/usr/local/bin/pike

#define size 10
#define size_x 2
#define size_y 5


int main()
{
	array(int) array=({});
	array(int) array1=allocate(size);
	//array(array(int)) sheet=({ ({}) });
	array(array(int)) sheet=allocate(size_x*size_y);
	
	for (int i= 0; i < size; i++) {
	   array+=({100+i});
	   array1[i]=100+i;
	   write("array[%d]=%d array1=%d -> %d %d\n", i, array[i],array1[i], sizeof(array),sizeof(array1));
	}

	for (int y=0; y < size_y; y++)
	{
		write("%d ", sizeof(sheet));
		sheet[y]=({0});
		for (int x=0; x < size_x; x++)
		{
			sheet[y]+=({0});
			sheet[y][x]= 10*y+x;
			write("sheet[%d][%d] = %d -> %d\n", y, x, sheet[y][x], sizeof(sheet));
		}
	}
	return 0;
}
