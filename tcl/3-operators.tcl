#!/bin/tclsh

set liczba1 2
set liczba2 3


puts "$liczba1 + $liczba2 = [ expr {$liczba1 + $liczba2} ]"
puts "$liczba1 - $liczba2 = [ expr {$liczba1 - $liczba2} ]"
puts "$liczba1 * $liczba2 = [ expr {$liczba1 * $liczba2} ]"
puts "$liczba1 / $liczba2 = [ expr {$liczba1 / $liczba2} ]"
puts "$liczba1 / $liczba2 = [ expr {double($liczba1) / $liczba2} ]"
puts "$liczba1 % $liczba2 = [ expr {$liczba1 % $liczba2} ]"
puts "$liczba1 / $liczba2 = [ expr {1.0 * $liczba1 / $liczba2} ]"
puts "$liczba1 / $liczba2 = [ expr {int(1.0 * $liczba1 / $liczba2)} ]"

puts "1.2 / 0.1 = [ expr 1.2 /0.1]"
puts "1.2 * 10 = [ expr 1.2 /0.1]"
puts "1.2 * 10 = [ expr int(1.2 /0.1)]"

set tcl_precision 17  
puts "precision=17 -> $liczba1 / $liczba2 = [ expr {double($liczba1) / $liczba2} ]"

puts [ expr {$liczba1+1}]
puts [ incr liczba1 ]
puts "$liczba1"
puts [ incr liczba1 -1 ]
puts "$liczba1"

