#!/usr/local/bin/pike
int add(int a, int b)
{
    return a+b;
}

int echo(int e)
{
    write("echo e=%d\n", e); 
    e--;
    if (e) echo(e);
}


void increment(array(int) what, array(int) to)
{
    write("increment: received what=%d to=%d \n", what[0], to[0]);
    what[0]++;
    to[0]++;
    write("increment: returning what=%d to=%d \n", what[0], to[0]);
}

int main()
{
	int a=2, b=3;

		write("%d + %d = %d\n", a, b, add(a, b));
	
	echo(10);
	
	write("a = %d b=%d\n", a, b);
	
	array(int) what=({a});
	array(int) to=({});
	
	// what[0]=a;
	to+=({b});
	
	increment(what, to);
	a=what[0];
	b=to[0];
	
	write("a after increment= %d\n", a);
	write("b after increment= %d\n", b);
	return 0;
}
