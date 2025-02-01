#!/bin/tclsh

set number1 2
set number2 3

puts [expr { 1 < 2 }]
puts [expr { 1 > 2 }]

if {$number1 < $number2} \
	{ puts "$number1 < $number2 => [ expr {$number1 < $number2} ]" }


if {$number1 > $number2} { 
	puts "$number1 > $number2 => [ expr {$number1 > $number2} ]" 
} else { 
	puts "$number1 < $number2 => [ expr {$number1 < $number2} ]" 
}

if {$number1 > $number2} { puts "$number1 > $number2 " } else { puts "$number1 < $number2" }


puts "czy $number1 == $number1"
if {$number1 == $number1} { puts "yes "}

puts "czy $number1 != $number2"
if {$number1 != $number2} { puts "yes "}

	#puts "is it not true that $number1 == $number2?"
	#if { ! { $number1 == $number2} } { puts("yes")}
	
	puts [ expr { $number1 < $number2 ? 10 : 20} ]
	
	puts "is it true that $number1 == $number1 -> [ expr {$number1 == $number1  ? "yes" : "no" } ]"
	
	switch $number1 {
		2 {
			puts "number1 is 2"
		}
		default {
			puts "number1 is not 2"
	}
}


