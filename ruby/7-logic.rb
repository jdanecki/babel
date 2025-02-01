#!/bin/ruby

def iloczyn(a, b)
	puts "iloczyn #{a} && #{b} = #{a && b}"
	puts "iloczyn #{a} and #{b} = #{a and b}"
end

def suma(a, b)
	puts "suma #{a} || #{b} = #{ a || b}"
	puts "suma #{a} || #{b} = #{ a or b}"
end

def negacja( a)
	puts "negacja !#{a} = #{!a}"
end

zero=false
jeden=true

iloczyn(zero, zero)
iloczyn(zero, jeden)
iloczyn(jeden, zero)
iloczyn(jeden, jeden)

suma(zero, zero)
suma(zero, jeden)
suma(jeden, zero)
suma(jeden, jeden)

negacja(zero)
negacja(jeden)

a=3
b=1
c=2

puts "iloczyn: #{a} & #{b} = #{a & b}"
puts "suma: #{a} | #{b} = #{ a | b}"
puts "suma modulo 2: #{a} ^ #{b} = #{ a ^ b}"
puts "negacja: ~#{a} = #{~a}"

