#include <stdio.h>

int add(int a, int b)
{
    return a+b;
}

void echo(int e)
{
    printf("echo e=%d\n", e); 
    e--;
    if (e) echo(e);
}

int (*operation)(int a, int b);

void increment(int *what, int *to)
{
    printf("increment: received *what=%d what=%p *to=%d to=%p\n", *what, what, *to, to);
    (*what)++;
    *to++;
    printf("increment: returning *what=%d what=%p *to=%d, to=%p\n", *what, what, *to, to );
}

int main()
{
	int a=2, b=3;

	printf("%d + %d = %d\n", a, b, add(a, b));
	
	echo(10);
	
	operation = add;
	printf("result of operation on %d and %d = %d\n", a, b, operation(a, b));
	
	printf("a = %d b = %d\n", a, b);
	increment(&a, &b);
	printf("a after increment = %d\n", a);
	printf("b after increment = %d\n", b);
	return 0;
}
