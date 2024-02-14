#!/bin/bash
declare -A samochod

pokaz()
{
	echo "parameters: $@"
	
	for element in "$@"; do
        echo "element=$element"
    done

	echo "marka: $1"
	echo "rok produkcji: $2"
}

samochod[marka]="volvo v40"
samochod[rok_produkcji]=2010

echo "marka: ${samochod['marka']}"
echo "rok_produkcji: ${samochod['rok_produkcji']}"

pokaz "${samochod[@]}"

