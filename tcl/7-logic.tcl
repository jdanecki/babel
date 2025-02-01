#!/bin/tclsh


proc iloczyn {a b} {
	puts "iloczyn $a  && $b = [ expr { $a && $b} ]"
}

proc suma {a b} {
	puts "suma $a  || $b = [ expr { $a || $b} ]"
}

proc suma_xor {a b} {
	puts "suma xor $a  ^ $b = [ expr { $a ^ $b} ]"
}

proc negacja {a} {
	puts "negacja !$a = [ expr {!$a} ]"
}


set zero  0
set jeden 1

iloczyn $zero  $zero  
iloczyn $zero  $jeden  
iloczyn $jeden  $zero  
iloczyn $jeden  $jeden  

suma $zero  $zero  
suma $zero  $jeden  
suma $jeden  $zero  
suma $jeden  $jeden  

suma_xor $zero  $zero  
suma_xor $zero  $jeden  
suma_xor $jeden  $zero  
suma_xor $jeden  $jeden  

negacja $zero  
negacja $jeden  

set a 3 
set b 1 
set c 2 
	
set liczba1 2
set liczba2 3

puts "$liczba1 + $liczba2 = [ expr {$liczba1 + $liczba2} ]"

puts "iloczyn: $a & $b = [ expr {$a & $b }]"
puts "suma: $a | $b = [ expr {$a | $b }]"
puts "suma xor: $a ^ $b = [ expr {$a ^ $b }]"
puts "negacja: ~ $b = [ expr { ~$b & 1}]"



