#include <stdio.h>
#define size 10
#define size_x 2
#define size_y 5

int main()
{
    int array[size];
    int sheet[size_y][size_x];
    int i;

    for (i= 0; i < size; i++) {
       array[i] = 100+i;
       printf("array[%d]=%d\n", i, array[i]);
    }
    int y, x;
    for (y=0; y < size_y; y++)
    {
        for (x=0; x < size_x; x++)
        {
            sheet[y][x] = 10*y+x;
            printf("sheet[%d][%d] = %d\n", y, x, sheet[y][x]);
        }
    }
	return 0;
}
