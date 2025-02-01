#!/bin/tclsh
# there are command instead of functions
proc add {a b} {
    set x [expr {$a + $b}]
    return $x
}

set a 2
set b 3
puts "$a + $b = [ add $a $b ]"

proc echo {e} {
    puts "echo e=$e" 
    incr e -1
    if {$e > 0 } { echo $e }
}

proc foo { arg} {
    puts "foo: arg=$arg"
}

set variable 12
foo 10
foo "ala"
foo variable
foo $variable

proc reference { arg} {
    upvar $arg ref
    puts "ref=$ref arg=$arg"
    incr ref
    puts "after incr ref=$ref arg=$arg"
}

set a 10
reference a
puts "a=$a"

echo 10
puts "echo for $a"
echo $a
proc increment {what to} {
    upvar $what ref_what
    upvar $to ref_to
    puts "increment: received what=$what to=$to ref_what=$ref_what ref_to=$ref_to"
    incr ref_what
    incr ref_to
    puts "increment: returning what=$what to=$to ref_what=$ref_what ref_to=$ref_to"
}

puts "a = $a b=$b"
increment a b
puts "a after increment = ${a}"
puts "b after increment = ${b}"

# can override other commands
proc for { a b c d } { 
    puts "new command for a=$a b=$b c=$c d=$d" 
}
for {set a 1} { $a < 10} {incr a} { puts "loop a=$a" }

proc default_arg {a {b 10} {c 20}} {
	puts "a=$a b=$b c=$c"
}

default_arg 1
default_arg 1 2 
default_arg 1 2 3



