#!/bin/crystal

def product(a, b)
    puts "product #{a} && #{b} = #{a && b}"
end

def sum(a, b)
    puts "sum #{a} || #{b} = #{ a || b}"
end

def negation(a)
    puts "negation !#{a} = #{!a}"
end

zero=false
one=true

product(zero, zero)
product(zero, one)
product(one, zero)
product(one, one)

sum(zero, zero)
sum(zero, one)
sum(one, zero)
sum(one, one)

negation(zero)
negation(one)
a=3
b=1
c=2

puts "product: #{a} & #{b} = #{a & b}"
puts "sum: #{a} | #{b} = #{ a | b}"
puts "sum modulo 2: #{a} ^ #{b} = #{ a ^ b}"
puts "negation: ~#{a} = #{~a}"
