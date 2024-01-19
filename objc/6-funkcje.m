#include <stdio.h>


int dodaj(int a, int b)
{
	return a+b;
}

int echo(int e)
{
	printf("echo e=%d\n", e); 
	e--;
	if (e) echo(e);
}

int (*operacja)(int a, int b);

void zwieksz(int *co, int *to)
{
	printf("zwieksz: dostałem *co=%d co=%p *to=%d to=%p\n", *co, co, *to, to);
	(*co)++;
	*to++;
	printf("zwieksz: oddaję *co=%d co=%p *to=%d, to=%p\n", *co, co, *to, to );
}


int main()
{
	int a=2, b=3;

	printf("%d + %d = %d\n", a, b, dodaj(a, b));

	echo(10);

	operacja=dodaj;
	printf("wynik operacji na %d i %d=%d\n", a, b, operacja(a,b));

	printf("a = %d b=%d\n", a, b);
	zwieksz(&a, &b);
	printf("a po zwiekszeniu= %d\n", a);
	printf("b po zwiekszeniu= %d\n", b);
	return 0;
}
