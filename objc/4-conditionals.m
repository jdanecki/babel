#import <Foundation/Foundation.h>

int main()
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
		int number1=2, number2=3;
	
	if (number1 < number2) NSLog(@"%d < %d -> %d\n", number1, number2, number1 < number2);
	NSLog(@"%d > %d -> %d\n", number1, number2, number1 > number2);
	
	NSLog(@"is %d == %d? ", number1, number1);
	if (number1 == number1) puts("yes");
	
	NSLog(@"is %d != %d? ", number1, number2);
	if (number1 != number2) puts("yes");
	
	NSLog(@"is it not true that %d == %d? ", number1, number2);
	if (!(number1 == number2)) puts("yes");
	
	NSLog(@"is it true that %d == %d -> %s ", number1, number1, number1 == number1 ? "yes" : "no");
	[pool drain];

	return 0;
}	
