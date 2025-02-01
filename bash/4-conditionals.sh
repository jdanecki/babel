#!/bin/bash
number1=2
number2=3

if [ $number1 -lt $number2 ]
then
       echo "$number1 < $number2"
fi

if [ $number2 -gt $number1 ]
then
       echo "$number2 > $number1"
fi

if [ $number1 -eq $number1 ]
then
       echo "$number1 is equal $number1"
fi

if [ $number1 -ne $number2 ]
then
       echo "$number1 is not equal $number2"
fi

if [ ! $number1 -eq $number2 ]
then
       echo "it is not true $number1 is equal to $number2"
fi

# -le less than or equal
# -ge greater than or equal

a=""

if [ -z $a ]
then
       echo "\$a is empty"
fi

b="cos"

if [ -n $b ]
then
       echo "\$b isn't empty, because it has $b"
fi

c="nothing"
if [ $b != $c ]
then       
       echo "\$b is not equal to \$c"
fi

if [[ $b != $c ]]
then       
       echo "\$b is not equal to \$c"
fi

result=$(( $number1 == $number1 ? 1 : 0 ))
echo "is it true that \$number1 == \$number1 -> $result"

let "result = (number1 == number1) ? 1 : 0"
echo "is it true that \$number1 == \$number1 -> $result"
(( result1 = number1 == number1 ? 1 : 0 ))
echo "\$result1=$result1"
