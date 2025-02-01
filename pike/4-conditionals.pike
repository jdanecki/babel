#!/usr/local/bin/pike
int main()
{
	int number1=2, number2=3;

	if (number1 < number2) write("%d < %d -> %d\n", number1, number2, number1 < number2);
	write("%d > %d -> %d\n", number1, number2, number1 > number2);
	
	write("is %d == %d? ", number1, number1);
	if (number1 == number1) write("yes\n");

	write("is %d != %d? ", number1, number2);
	if (number1 != number2) write("yes\n");
		
	write("is it not true that %d == %d? ", number1, number2);
	if (!(number1 == number2)) write("yes\n");
	
	write("is it true that %d == %d -> %s ", number1, number1, number1 == number1 ? "yes" : "no" );

	return 0;
}	
