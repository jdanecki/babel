#include <stdio.h>
struct car
{
    const char * brand;
    int year_of_production;
};

void show(struct car *s)
{
    printf("brand: %s\n", s->brand);
    printf("year of production: %d\n", s->year_of_production);
}

int main()
{
    struct car volvo;
    
    volvo.brand = "volvo v40";
    volvo.year_of_production = 2010;

    show(&volvo);
	return 0;
}
