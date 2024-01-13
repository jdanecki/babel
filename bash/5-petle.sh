for i in `seq 0 10`
do
	echo "\$i=$i"
done

b=$i

echo "start: b=i=$b"

while [ $b -lt 20 ]
do	
	echo "\$b=$b"
	b=$(($b+1))
done

echo "start \$b=$b while \$b < 50"
g=0
while [[ $b -lt 50 ]]
do
		echo "\$b=$b \$g=$g"
		b=$(($b+1))
		g=$(($g+1))
		
		if [[ $g -gt 10 ]]
		then
			break
		fi
done

echo "start \$b=$b until \$b > 40"
until [[ $b -gt 40 ]]
do
		echo "\$b=$b"
		b=$(($b+1))
done

for h in `seq 0 10`
do
	if [ $h -eq 4 ]
	then
			echo "mam 4"
			continue;
	fi
	if [ $h -eq 5 ]
	then
		echo "skok w bok: $h"		
	else
		case $h in
			1)  echo "jeden";; 
			*)  echo "coś innego niż 1, bo $h";;
		esac
	fi
done

l=0
while true
do
	echo "while true: \$l=$l"
	l=$(($l+1))
	if [[ $l -gt 10 ]]
		then
			break
		fi
done

for ((i=0; i<10; i++))
do
	echo "for \$i=$i"
done

