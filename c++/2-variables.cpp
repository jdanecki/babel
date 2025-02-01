#include <stdio.h>
// comment

/* 
 * long comment
 * on multiple lines
 */

int main()
{
    const char * string ="hello";
    int number=123;
    char character='a';
    int * pointer=&number;
    enum month {
        january,
        february,
        may=5,
        june,
    };

	printf("string=%s number=%d character=%c pointer=%p value at pointer=%d\n", string, number, character, pointer, *pointer);
	*pointer = 456;
	printf("string=%s number=%d character=%c pointer=%p value at pointer=%d\n", string, number, character, pointer, *pointer);
	
	enum month s=january;
	enum month m = may;
	enum month c = june;
	
	printf("months: january=%d may=%d june=%d\n", s, m, c);
	return 0;
}
