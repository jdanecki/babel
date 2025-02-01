#!/usr/local/bin/pike
class car
{
	string brand;
	int year_of_production;
};

void show(car s)
{
	write("brand: %s\n", s->brand);
	write("year of production: %d\n", s->year_of_production);
}

int main()
{
	car volvo = car();
	car matiz;
	
	volvo->brand = "volvo v40";
	volvo->year_of_production = 2010;

	show(volvo);
	
	matiz=car();
	matiz->brand="matiz";
	matiz->year_of_production=2007;

	show(matiz);

	return 0;
}
