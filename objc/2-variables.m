#import <Foundation/Foundation.h>
// comment

/* 
 * long comment
 * on multiple lines
 */

int main()
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    char * string ="hello";
    NSString * string1 = @"string1";
    int number=123;
    char character='a';
    int * pointer=&number;
    enum month {
        january,
        february,
        may=5,
        june,
    };

    NSLog(@"string=%s string1=%@ number=%d character=%c pointer=%p value at pointer=%d\n", 
            string, string1, number, character, pointer, *pointer);
    *pointer = 456;
    NSLog(@"string=%s number=%d character=%c pointer=%p value at pointer=%d\n", string, number, character, pointer, *pointer);

    enum month s=january;
    enum month m = may;
    enum month c = june;

    NSLog(@"months:  january=%d may=%d june=%d\n",s, m, c);
    [pool drain];
    return 0;
}
