#!/bin/tclsh

set number1 2
set number2 3


puts "$number1 + $number2 = [ expr {$number1 + $number2} ]"
puts "$number1 - $number2 = [ expr {$number1 - $number2} ]"
puts "$number1 * $number2 = [ expr {$number1 * $number2} ]"
puts "$number1 / $number2 = [ expr {$number1 / $number2} ]"
puts "$number1 / $number2 = [ expr {double($number1) / $number2} ]"
puts "$number1 % $number2 = [ expr {$number1 % $number2} ]"
puts "$number1 / $number2 = [ expr {1.0 * $number1 / $number2} ]"
puts "$number1 / $number2 = [ expr {int(1.0 * $number1 / $number2)} ]"

puts "1.2 / 0.1 = [ expr 1.2 /0.1]"
puts "1.2 * 10 = [ expr 1.2 /0.1]"
puts "1.2 * 10 = [ expr int(1.2 /0.1)]"

set tcl_precision 17  
puts "precision=17 -> $number1 / $number2 = [ expr {double($number1) / $number2} ]"

puts [ expr {$number1+1}]
puts [ incr number1 ]
puts "$number1"
puts [ incr number1 -1 ]
puts "$number1"

