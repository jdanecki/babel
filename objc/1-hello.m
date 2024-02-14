#ifdef USE_GNUSTEP
#import <Foundation/Foundation.h>
void function()
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSLog(@"hello world");
	[pool drain];
}
#else
#include <stdio.h>
void function()
{
	printf("hello\n");	
}
#endif

int main()
{
	function();
	return 0;
}

