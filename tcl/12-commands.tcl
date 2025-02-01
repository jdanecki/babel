#!/bin/tclsh

set out [exec ls]
#puts "out=$out"
set list [split $out]

puts "list's size: [llength $list]"
set i 0
foreach el $list {
	puts "el at $i=$el"
	incr i
}

