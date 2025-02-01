#!/bin/bash
size=10
size_x=2
size_y=5

declare -A array
declare -A sheet

array[0]=10
array[1]=20

echo "\$array[0]=${array[0]}"
echo "\$array[1]=${array[1]}"

for ((i=0; i< size; i++))
do
#	echo "i=$i"
    array[$i]=$((100+i))
     echo "array[$i]=${array[$i]}"
done

for ((y=0; y < size_y; y++))
do
    for ((x=0; x < size_x; x++))
    do
        sheet[$y,$x]=$((10*y+x))
        echo "sheet[$y,$x]=${sheet[$y,$x]}"
	done
done

