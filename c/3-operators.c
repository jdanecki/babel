#include <stdio.h>

int main()
{
	int number1=2, number2=3;

	printf("%d + %d=%d\n", number1, number2, number1 + number2);
	printf("%d - %d=%d\n", number1, number2, number1 - number2);
	printf("%d * %d=%d\n", number1, number2, number1 * number2);
	printf("%d / %d=%d\n", number1, number2, number1 / number2);
	printf("%d / %d=%f\n", number1, number2, 1.0 * number1 / number2);

	return 0;
}
