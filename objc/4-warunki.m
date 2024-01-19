#import <Foundation/Foundation.h>

int main()
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	int liczba1=2, liczba2=3;

	if (liczba1 < liczba2) NSLog(@"%d < %d -> %d\n", liczba1, liczba2, liczba1 < liczba2);
	NSLog(@"%d > %d -> %d\n", liczba1, liczba2, liczba1 > liczba2);
	
	NSLog(@"czy %d == %d? ", liczba1, liczba1);
	if (liczba1 == liczba1) puts("tak ");

	NSLog(@"czy %d != %d? ", liczba1, liczba2);
	if (liczba1 != liczba2) puts("tak");
		
	NSLog(@"czy to nieprawda, że %d == %d? ", liczba1, liczba2);
	if (!(liczba1 == liczba2)) puts("tak");
	
	NSLog(@"czy to prawda, że %d == %d -> %s ", liczba1, liczba1, liczba1 == liczba1 ? "tak" : "nie" );
	[pool drain];

	return 0;
}	
