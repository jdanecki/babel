#!/bin/tclsh

# hash arrays
# index is string
set size 10
set size_x 2
set size_y 5

set a(1) 10
set a(2) 7
set a(3) 17
set b 2
puts "Sum: a(1)=$a(1) a(b)=$a($b) b=$b [expr {$a(1)+$a($b)}]"

for {set i 0} {$i < $size} { incr i}  {
    set array($i) [ expr 100 + $i]
    puts "array($i)=$array($i)"
}

puts "size: array=[array size array]"

for {set y 0} { $y < $size_y} {incr y} {
    for {set x 0} { $x < $size_x} {incr x} {
        set sheet($y,$x) [expr 10*$y + $x]
        puts "sheet($y,$x) = $sheet($y,$x)"
    }
}

foreach {name value} [array get sheet] {
    puts "sheet: key=$name value=$value"
}


