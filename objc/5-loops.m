#include <stdio.h>
int main()
{
	int b=0, c=0, d=0, e=0, f=0, g=0, h=0, i=0;

	for (i=0; i < 10; i++)
	{
		printf("i=%d\n", i);
		b=i;
	}

	printf("start: b=i=%d\n", b);
	for (; b < 20; )
		printf("b++=%d\n", b++);
	
	printf("start: c=b=%d\n", b);
	for (c=b; c < 30; )
		printf("++c=%d\n", ++c);
	
	printf("start: d=c, e=c=%d\n", c);
	for (d=c, e=c; d < 40; )
		printf("++d=%d e++=%d\n", ++d, e++);
	
	f=e;
	printf("start: f=e=%d\n", e);
	while (e < 50)
	{
		printf("++e=%d e--=%d f--=%d ++f=%d\n", ++e, e--, f--, ++f);
		g++;
		if (g > 10) break;
	}
	
	printf("start: g=%d\n", g);
	do {
		printf("g--=%d\n", g--);
	} while(g > 0 );


	for (h=0; h < 10; h++)
	{
		if (h == 4) {
			puts("I've got 4");			
			continue;
		}
		if (h==5) goto jump;
		switch(h)
		{
			case 1: puts("one"); break;
			default: printf("something else than 1, because %d\n", h); break;
		}
		continue;

jump:
			printf("side jump: %d\n", h);
	}

	return 0;
}	
