#!/bin/ruby

def product(a, b)
	puts "product #{a} && #{b} = #{a && b}"
	puts "product #{a} and #{b} = #{a and b}"
end

def suma(a, b)
	puts "suma #{a} || #{b} = #{ a || b}"
	puts "suma #{a} || #{b} = #{ a or b}"
end

def negation( a)
	puts "negation !#{a} = #{!a}"
end

zero=false
one=true

product(zero, zero)
product(zero, one)
product(one, zero)
product(one, one)

suma(zero, zero)
suma(zero, one)
suma(one, zero)
suma(one, one)

negacja(zero)
negacja(one)

a=3
b=1
c=2

puts "product: #{a} & #{b} = #{a & b}"
puts "suma: #{a} | #{b} = #{ a | b}"
puts "suma modulo 2: #{a} ^ #{b} = #{ a ^ b}"
puts "negation: ~#{a} = #{~a}"

