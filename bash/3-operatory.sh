#!/bin/bash

liczba1=2
liczba2=3

echo "$liczba1 + $liczba2=$(($liczba1 + $liczba2))"
echo "$liczba1 - $liczba2=$(($liczba1 - $liczba2))"
echo "$liczba1 * $liczba2=$(($liczba1 * $liczba2))"
echo "$liczba1 / $liczba2=$(($liczba1 / $liczba2))"

let var=10
echo "\$var=$var"

let var++
echo -e "var++\n\$var=$var"

let var--
echo -e "var--\n\$var=$var"

let ++var
echo -e "++var\n\$var=$var"

let --var
echo -e "--var\n\$var=$var"

let var=var+10
echo -e "var=var+10\n\$var=$var"

let var=var*10
echo -e "var=var*10\n\$var=$var"

let var=var/20
echo -e "var=var/20\n\$var=$var"

let var=var**2
echo -e "var=var**2\n\$var=$var"

let var+=10
echo -e "var+=10\n\$var=$var"

let var-=10
echo -e "var-=10\n\$var=$var"

let var*=10
echo -e "var*=10\n\$var=$var"

let var/=10
echo -e "var/=10\n\$var=$var"

