#!/usr/local/bin/pike
/* 
 * long comment
 * on multiple lines
 */

int main()
{
    string str="hello";
    int number=123;
    string character="a";
    enum month {
        january=0,
        february=1,
        may=5,
        june=6
    };

    write("string=%s number=%d character=%s \n", str, number, character);

    month s=january;
    month m = may;
    month c = june;

    write("months:  january=%d may=%d june=%d\n",s, m, c);
	return 0;
}
