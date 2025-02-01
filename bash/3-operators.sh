#!/bin/bash

number1=2
number2=3

echo "$number1 + $number2=$(($number1 + $number2))"
echo "$number1 - $number2=$(($number1 - $number2))"
echo "$number1 * $number2=$(($number1 * $number2))"
echo "$number1 / $number2=$(($number1 / $number2))"

let var=10
echo "\$var=$var"

let var++
echo -e "var++\n\$var=$var"

let var--
echo -e "var--\n\$var=$var"

let ++var
echo -e "++var\n\$var=$var"

let --var