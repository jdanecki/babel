#import <Foundation/Foundation.h>

int main()
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	int liczba1=2, liczba2=3;

	NSLog(@"%d + %d=%d\n", liczba1, liczba2, liczba1 + liczba2);
	NSLog(@"%d - %d=%d\n", liczba1, liczba2, liczba1 - liczba2);
	NSLog(@"%d * %d=%d\n", liczba1, liczba2, liczba1 * liczba2);
	NSLog(@"%d / %d=%d\n", liczba1, liczba2, liczba1 / liczba2);
	NSLog(@"%d / %d=%f\n", liczba1, liczba2, 1.0 * liczba1 / liczba2);
	[pool drain];

	return 0;
}
