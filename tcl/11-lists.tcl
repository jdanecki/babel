#!/bin/tclsh
proc show_list {l} {
    upvar $l ref
    puts "$l: $ref\nfirst element is [lindex $ref 0]"
    puts "list size: [llength $ref]"
    set i 0
    foreach el $ref {
        puts "el at $i=$el"
        incr i
    }
}

set list1 "a b c"
set list2 {{"a"} {"b"} {"c"} {10}}
set list3 [split "a-b-c-20" "-"]
set list4 [list "a" "b" "c" 30]
set list5 {test = {a[1] b[60] c[25] c[36]}}

show_list list1
show_list list2
show_list list3
show_list list4
show_list list5

for {set i 0} { $i < [ llength $list1]} { incr i} {
    puts "el at $i = [lindex $list1 $i]"
}

lappend list5 "addition"
show_list list5

set list6 [linsert $list5 2 "insert"]
show_list list6

set list7 [linsert $list5 3 "something"]
show_list list7

