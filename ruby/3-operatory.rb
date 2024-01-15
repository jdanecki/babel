#!/bin/ruby

liczba1=2
liczba2=3

#arytmetyczne
puts liczba1 + liczba2
puts liczba1 - liczba2
puts liczba1 * liczba2
puts liczba1 / liczba2

puts liczba1-=10
puts liczba1+=10

#logiczne
puts true && true
puts false || true
puts !true
# xor
puts true != true

puts "foo" =~ /fo/
puts "foo" !~ /fo/
puts "foo" === /foo/

puts 1..10
puts 1...10

