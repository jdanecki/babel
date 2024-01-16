int dodaj(int a, int b)
{
	return a+b;
}

int echo(int e)
{
	write("echo e=%d\n", e); 
	e--;
	if (e) echo(e);
}


void zwieksz(array(int) co, array(int) to)
{
	write("zwieksz: dostałem co=%d to=%d \n", co[0], to[0]);
	co[0]++;
	to[0]++;
	write("zwieksz: dostałem co=%d to=%d \n", co[0], to[0]);
}

int main()
{
	int a=2, b=3;

	write("%d + %d = %d\n", a, b, dodaj(a, b));

	echo(10);

	write("a = %d b=%d\n", a, b);
	
	array(int) co=({a});
	array(int) to=({});

 // co[0]=a;
	to+=({b});

	zwieksz(co, to);
	a=co[0];
	b=to[0];

	write("a po zwiekszeniu= %d\n", a);
	write("b po zwiekszeniu= %d\n", b);
	return 0;
}
