#!/bin/bash
declare -A car

show()
{
    echo "parameters: $@"
    
    for element in "$@"; do
        echo "element=$element"
    done

    echo "brand: $1"
    echo "year of production: $2"
}

car[brand]="volvo v40"
car[year_of_production]=2010

echo "brand: ${car['brand']}"
echo "year_of_production: ${car['year_of_production']}"

show "${car[@]}"

