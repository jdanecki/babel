#!/usr/local/bin/pike

int main()
{
	int number1=2, number2=3;

	write("%d + %d=%d\n", number1, number2, number1 + number2);
	write("%d - %d=%d\n", number1, number2, number1 - number2);
	write("%d * %d=%d\n", number1, number2, number1 * number2);
	write("%d / %d=%d\n", number1, number2, number1 / number2);
	write("%d / %d=%f\n", number1, number2, 1.0 * number1 / number2);

	return 0;
}
