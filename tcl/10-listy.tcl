#!/bin/tclsh

proc show_list {l} {
	upvar $l ref
	puts "$l: $ref\nzerowy element to [lindex $ref 0]"
	puts "rozmiar listy: [llength $ref]"
	set i 0
	foreach el $ref {
		puts "el at $i=$el"
		incr i
	}
}

set lista1 "a b c"
set lista2 {{"a"} {"b"} {"c"} {10}}
set lista3 [split "a-b-c-20" "-"]
set lista4 [list "a" "b" "c" 30]
set lista5 {test = {a[1] b[60] c[25] c[36]}}

show_list lista1
show_list lista2
show_list lista3
show_list lista4
show_list lista5

for {set i 0} { $i < [ llength $lista1]} { incr i} {
	puts "el at $i = [lindex $lista1 $i]"
}

lappend lista5 "dodatek"
show_list lista5

set lista6 [linsert $lista5 2 "wsad"]
show_list lista6

set lista7 [linsert $lista5 3 "costam"]
show_list lista7


