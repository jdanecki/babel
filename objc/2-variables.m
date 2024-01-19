#import <Foundation/Foundation.h>
// komentarz

/* 
 * długi komentarz
 * na kilka linii
 */

int main()
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

	char * string ="hello";
	NSString * string1 = @"string1";
	int liczba=123;
	char znak='a';
	int * wskaznik=&liczba;
	enum miesiac {
		styczen,
		luty,
		maj=5,
		czerwiec,
	};

	NSLog(@"string=%s string1=%@ liczba=%d znak=%c wskaźnik=%p wartość pod wskaźnikiem=%d\n", 
			string, string1, liczba, znak, wskaznik, *wskaznik);
	*wskaznik = 456;
	NSLog(@"string=%s liczba=%d znak=%c wskaźnik=%p wartość pod wskaźnikiem=%d\n", string, liczba, znak, wskaznik, *wskaznik);

	enum miesiac s=styczen;
	enum miesiac m = maj;
	enum miesiac c = czerwiec;

	NSLog(@"miesiące:  styczen=%d maj=%d czerwiec=%d\n",s, m, c);
	[pool drain];
	return 0;
}
