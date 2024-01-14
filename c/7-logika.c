#include <stdio.h>

void iloczyn(char a, char b)
{
	printf("iloczyn %d && %d = %d\n", a, b, a && b);
}

void suma(char a, char b)
{
	printf("suma %d || %d = %d\n", a, b, a || b);
}

void suma_xor(char a, char b)
{
	printf("suma xor %d ^ %d = %d\n", a, b, a ^ b);
}

void negacja(char a)
{
	printf("negacja !%d  = %d\n", a, !a);
}


int main()
{
	char zero=0, jeden=1;

	iloczyn(zero, zero);
	iloczyn(zero, jeden);
	iloczyn(jeden, zero);
	iloczyn(jeden, jeden);

	suma(zero, zero);
	suma(zero, jeden);
	suma(jeden, zero);
	suma(jeden, jeden);
	
	suma_xor(zero, zero);
	suma_xor(zero, jeden);
	suma_xor(jeden, zero);
	suma_xor(jeden, jeden);

	negacja(zero);
	negacja(jeden);

	char a=3;
	char b=1;
	char c=2;
	
	printf("iloczyn: %d & %d = %d\n", a, b, a & b);
	printf("suma: %d | %d = %d\n", b, c, b & c);
	printf("suma modulo 2 (xor) %d ^ %d = %d\n", b, c, b ^ c);
	printf("negacja ~%d = %d\n", b, ~b);


	return 0;
}
