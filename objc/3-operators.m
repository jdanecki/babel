#import <Foundation/Foundation.h>

int main()
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	int number1=2, number2=3;

	NSLog(@"%d + %d=%d\n", number1, number2, number1 + number2);
	NSLog(@"%d - %d=%d\n", number1, number2, number1 - number2);
	NSLog(@"%d * %d=%d\n", number1, number2, number1 * number2);
	NSLog(@"%d / %d=%d\n", number1, number2, number1 / number2);
	NSLog(@"%d / %d=%f\n", number1, number2, 1.0 * number1 / number2);
	[pool drain];

	return 0;
}
