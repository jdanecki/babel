#!/bin/tclsh

set liczba1 2
set liczba2 3

puts [expr { 1 < 2 }]
puts [expr { 1 > 2 }]

if {$liczba1 < $liczba2} \
	{ puts "$liczba1 < $liczba2 => [ expr {$liczba1 < $liczba2} ]" }


if {$liczba1 > $liczba2} { 
	puts "$liczba1 > $liczba2 => [ expr {$liczba1 > $liczba2} ]" 
} else { 
	puts "$liczba1 < $liczba2 => [ expr {$liczba1 < $liczba2} ]" 
}

if {$liczba1 > $liczba2} { puts "$liczba1 > $liczba2 " } else { puts "$liczba1 < $liczba2" }


puts "czy $liczba1 == $liczba1"
if {$liczba1 == $liczba1} { puts "tak "}

puts "czy $liczba1 != $liczba2"
if {$liczba1 != $liczba2} { puts "tak "}

	
#puts "czy to nieprawda, że $liczba1 == $liczba2?"
#if { ! { $liczba1 == $liczba2} } { puts("tak")}

puts [ expr { $liczba1 < $liczba2 ? 10 : 20} ]

puts "czy to prawda, że $liczba1 == $liczba1 -> [ expr {$liczba1 == $liczba1  ? "tak" : "nie" } ]"

switch $liczba1 {
	2 {
		puts "liczba1 to 2"
	}
	default {
		puts "liczba1 to nie 2"
	}
}


