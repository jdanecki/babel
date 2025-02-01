#!/usr/local/bin/pike
void iloczyn(int a, int b)
{
	write("iloczyn %d && %d = %d\n", a, b, a && b);
}

void suma(int a, int b)
{
	write("suma %d || %d = %d\n", a, b, a || b);
}

void suma_xor(int a, int b)
{
	write("suma xor %d ^ %d = %d\n", a, b, a ^ b);
}

void negacja(int a)
{
	write("negacja !%d  = %d\n", a, !a);
}


int main()
{
	int zero=0, jeden=1;

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

	int a=3;
	int b=1;
	int c=2;
	
	write("iloczyn: %d & %d = %d\n", a, b, a & b);
	write("suma: %d | %d = %d\n", b, c, b | c);
	write("suma modulo 2 (xor) %d ^ %d = %d\n", b, c, b ^ c);
	write("negacja ~%d = %d\n", b, ~b);

	return 0;
}
