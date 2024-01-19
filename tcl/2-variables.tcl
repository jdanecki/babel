#!/bin/tclsh
# komentarz

# 
# długi komentarz
# na kilka linii
#
puts komentarz ;# komentarz
set str "hello"
set liczba 123
set znak 'a'

#	enum miesiac {
#		styczen,
#		luty,
#		maj=5,
#		czerwiec,
#	};

puts "str=$str liczba=$liczba znak=$znak"
puts "string size=[string length $str]"

set Z costam
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


#	enum miesiac s=styczen;
#	enum miesiac m = maj;
#	enum miesiac c = czerwiec;

#	printf("miesiące:  styczen=%d maj=%d czerwiec=%d\n",s, m, c);
