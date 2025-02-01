#include <stdio.h>
void product(char a, char b)
{
    printf("product %d && %d = %d\n", a, b, a && b);
}

void sum(char a, char b)
{
    printf("sum %d || %d = %d\n", a, b, a || b);
}

void sum_xor(char a, char b)
{
    printf("sum xor %d ^ %d = %d\n", a, b, a ^ b);
}

void negation(char a)
{
    printf("negation !%d  = %d\n", a, !a);
}

int main()
{
		char zero=0, one=1;
	
	product(zero, zero);
	product(zero, one);
	product(one, zero);
	product(one, one);
	
	sum(zero, zero);
	sum(zero, one);
	sum(one, zero);
	sum(one, one);
	
	sum_xor(zero, zero);
	sum_xor(zero, one);
	sum_xor(one, zero);
	sum_xor(one, one);
	
	negation(zero);
	negation(one);

	char a=3;
	char b=1;
	char c=2;
	
		printf("product: %d & %d = %d\n", a, b, a & b);
	printf("sum: %d | %d = %d\n", b, c, b | c);
	printf("sum modulo 2 (xor) %d ^ %d = %d\n", b, c, b ^ c);
	printf("negation ~%d = %d\n", b, ~b);


	return 0;
}
