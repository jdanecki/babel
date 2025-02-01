#!/bin/bash

add()
{
	echo "function: $FUNCNAME -- adds $1+$2"
	return $(($1 + $2))
}

function fun_echo()
{
	echo "function: $FUNCNAME -- echo $1" 
	a=$(($1 - 1))
	if [ $a -ge 0 ]
	then
		fun_echo $a
	fi
}

a=2
b=3
add $a $b

echo "$a + $b = $?"

	fun_echo 10 

