#!/bin/tclsh


proc product {a b} {
	puts "product $a  && $b = [ expr { $a && $b} ]"
}

proc sum {a b} {
	puts "sum $a  || $b = [ expr { $a || $b} ]"
}

proc sum_xor {a b} {
	puts "sum xor $a  ^ $b = [ expr { $a ^ $b} ]"
}

proc negation {a} {
	puts "negation !$a = [ expr {!$a} ]"
}


set zero  0
set one 1

product $zero  $zero  
product $zero  $one  
product $one  $zero  
product $one  $one  

sum $zero  $zero  
sum $zero  $one  
sum $one  $zero  
sum $one  $one  

sum_xor $zero  $zero  
sum_xor $zero  $one  
sum_xor $one  $zero  
sum_xor $one  $one  

negation $zero  
negation $one  

set a 3 
set b 1 
set c 2 
	
set number1 2
set number2 3

puts "$number1 + $number2 = [ expr {$number1 + $number2} ]"

puts "product: $a & $b = [ expr {$a & $b }]"
puts "sum: $a | $b = [ expr {$a | $b }]"
puts "sum xor: $a ^ $b = [ expr {$a ^ $b }]"
puts "negation: ~ $b = [ expr { ~$b & 1}]"



