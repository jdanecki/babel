liczba1=2
liczba2=3

if [ $liczba1 -lt $liczba2 ]
then
	echo "$liczba1 < $liczba2" 
fi

if [ $liczba2 -gt $liczba1 ]
then
	echo "$liczba2 > $liczba1" 
fi

if [ $liczba1 -eq $liczba1 ]
then
	echo "$liczba1 is equal $liczba1" 
fi

if [ $liczba1 -ne $liczba2 ]
then
	echo "$liczba1 is not equal $liczba2" 
fi

if [ ! $liczba1 -eq $liczba2 ]
then
	echo "to nieprawda $liczba1 is equal $liczba2" 
fi

# -le less than or equal
# -ge greater than or equal

a=""

if [ -z $a ]
then
	echo "\$a jest puste"
fi	

b="cos"

if [ -n $b ]
then
	echo "\$b nie jest puste, bo ma $b"
fi	

c="nic"
if [ $b != $c ]
then
	echo "\$b nie jest równe \$c"
fi

if [[ $b != $c ]]
then
	echo "\$b nie jest równe \$c"
fi

odp=$(( $liczba1 == $liczba1 ? 1 : 0 )) 
echo "czy to prawda, że \$liczba1 == \$liczba1 -> $odp" 

let "result = (liczba1 == liczba1) ? 1 : 0"
echo "czy to prawda, że \$liczba1 == \$liczba1 -> $result" 

(( result1 = liczba1 == liczba1 ? 1 : 0 ))
echo "\$result1=$result1"


