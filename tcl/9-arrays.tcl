#!/bin/tclsh

# hash arrays
# index is string

set  rozmiar 10
set  rozmiar_x 2
set  rozmiar_y 5

set a(1) 10
set a(2) 7
set a(3) 17
set b    2
puts "Sum: a(1)=$a(1) a(b)=$a($b) b=$b [expr {$a(1)+$a($b)}]"

for {set i 0} {$i < $rozmiar} { incr i}  {
   set tablica($i) [ expr 100 + $i]
   puts "tablica($i)=$tablica($i)"
}

puts "rozmiar: tablica=[array size tablica]"

for {set y 0} { $y < $rozmiar_y} {incr y} {
	for {set x 0} { $x < $rozmiar_x} {incr x} {
#		puts "y=$y x=$x"
		set kartka($y,$x) [expr 10*$y + $x]
		puts "kartka($y,$x) = $kartka($y,$x)"
	}
}

foreach {name value} [array get kartka] {
	puts "kartka: key=$name value=$value"
}


