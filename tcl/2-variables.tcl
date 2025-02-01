#!/bin/tclsh
# comment

# 
# long comment
# on multiple lines
#
puts comment ;# comment
set str "hello"
set number 123
set char 'a'

#	enum month {
#		january,
#		february,
#		may=5,
#		june,
#	};

puts "str=$str number=$number char=$char"
puts "string size=[string length $str]"

set Z something
puts "\$Z=$Z"

set a 123
puts "a=$a $a $$a"
puts {a=$a $a $$a}

set b [ set a "1" ]
puts "a=$a b=$b"

set c { set a "2" }
puts "a=$a c=$c"

set d {[ set a "3" ]}
puts "a=$a d=$d"

set e "[ set a "4" ]"
puts "a=$a e=$e"

set f "{ set a 5 }"
puts "a=$a f=$f"

set g "[ set a {6} ]"
puts "a=$a g=$g"

puts [expr {$g*10}]
puts [expr $g * 10 ]

set a [expr 2+2]
puts "a=$a"


#	enum month s=january;
#	enum month m = may;
#	enum month c = june;

#	printf("months:  january=%d may=%d june=%d\n",s, m, c);
