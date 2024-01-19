#!/bin/tclsh

set out [exec ls]
#puts "out=$out"
set lista [split $out]

puts "rozmiar listy: [llength $lista]"
set i 0
foreach el $lista {
	puts "el at $i=$el"
	incr i
}

