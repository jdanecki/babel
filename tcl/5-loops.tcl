#!/bin/tclsh


for { set i 0} {$i < 10} { incr i} {
	puts "i=$i"
}
set b $i
puts "start: i=$i b=$b"
for {} {$b < 20} { } {
	puts "b=$b"
	incr b
}

set g 0
set e 0

while {$e < 50} {
	set g [ expr { $g + 1}]
	if {$g > 10} { break}
	set e [ expr {$e + 1}]
	puts "while e=$e"
}

for { set  h 0} { $h < 10} {incr h} {
	puts "for $h"
	if {$h == 4} {
		puts "mam 4"
		continue
	}
	if {$h==5} { puts "skok w bok: h=$h" }
	
	switch $h {
		1 { puts "jeden" }
	  	default { puts "coś innego niż 1, bo $h" }
  	}
}
