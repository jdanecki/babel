#!/bin/bash

product()
{
    result=$(($1 && $2))
    echo "product $1 && $2 = $result"
}

sum()
{
    result=$(($1 || $2))
    echo "sum $1 || $2 = $result"
}

sum_xor()
{
	result=$(($1 ^ $2))
	echo "sum_xor $1 ^ $2 = $result"
}


zero=0
one=1

product $zero   $zero  
product $zero   $one  
product $one    $zero  
product $one    $one  

sum $zero   $zero  
sum $zero   $one  
sum $one    $zero  
sum $one    $one

sum_xor $zero   $zero  
sum_xor $zero   $one  
sum_xor $one    $zero  
sum_xor $one    $one 

neg=$((!$zero))
echo "negation ! $zero = $neg"
echo "negation ! $one = $((! $one))"

