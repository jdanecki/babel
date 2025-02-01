#!/bin/tclsh
# nie funkcje a są komendy

proc dodaj {a b} {
	set x [expr {$a + $b}]
	return $x
}

set a 2
set b 3
puts "$a + $b = [ dodaj $a $b ]"

proc echo {e} {
	puts "echo e=$e" 
	incr e -1
	if {$e > 0 } { echo $e }
}

proc foo { arg} {
	puts "foo: arg=$arg"
}

set zmienna 12
foo 10
foo "ala"
foo zmienna
foo $zmienna

proc referencja { arg} {
	upvar $arg ref
	puts "ref=$ref arg=$arg"
	incr ref
	puts "po incr ref=$ref arg=$arg"
}

set a 10
referencja a
puts "a=$a"

echo 10
puts "echo dla $a"
echo $a

proc zwieksz {co to} {
	upvar $co ref_co
	upvar $to ref_to
	puts "zwieksz: dostałem co=$co to=$to ref_co=$ref_co ref_to=$ref_to"
	incr ref_co
	incr ref_to
	puts "zwieksz: zwracam co=$co to=$to ref_co=$ref_co ref_to=$ref_to"
}

puts "a = $a b=$b"
zwieksz a b
puts "a po zwiekszeniu = ${a}"
puts "b po zwiekszeniu = ${b}"

# można nadpisać inne komendy
proc for { a b c d } { 
	puts "nowa komenda for a=$a b=$b c=$c d=$d" 
}
for {set a 1} { $a < 10} {incr a} { puts "petla a=$a" }

proc default_arg {a {b 10} {c 20}} {
	puts "a=$a b=$b c=$c"
}

default_arg 1
default_arg 1 2 
default_arg 1 2 3



