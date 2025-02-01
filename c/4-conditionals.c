#include <stdio.h>

int main()
{
		int number1=2, number2=3;
	
	if (number1 < number2) printf("%d < %d -> %d\n", number1, number2, number1 < number2);
	printf("%d > %d -> %d\n", number1, number2, number1 > number2);
	
	printf("is %d == %d? ", number1, number1);
	if (number1 == number1) puts("yes");
	
	printf("is %d != %d? ", number1, number2);
	if (number1 != number2) puts("yes");
	
	printf("is it not true that %d == %d? ", number1, number2);
	if (!(number1 == number2)) puts("yes");
	
	printf("is it true that %d == %d -> %s ", number1, number1, number1 == number1 ? "yes" : "no");
	return 0;
}	
