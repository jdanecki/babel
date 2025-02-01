#!/usr/local/bin/pike
void product(int a, int b)
{
	write("product %d && %d = %d\n", a, b, a && b);
}

void sum(int a, int b)
{
	write("sum %d || %d = %d\n", a, b, a || b);
}

void sum_xor(int a, int b)
{
	write("sum xor %d ^ %d = %d\n", a, b, a ^ b);
}

void negation(int a)
{
	write("negation !%d  = %d\n", a, !a);
}


int main()
{
	int zero=0, one=1;

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

	int a=3;
	int b=1;
	int c=2;
	
	write("product: %d & %d = %d\n", a, b, a & b);
	write("sum: %d | %d = %d\n", b, c, b | c);
	write("sum modulo 2 (xor) %d ^ %d = %d\n", b, c, b ^ c);
	write("negation ~%d = %d\n", b, ~b);

	return 0;
}
