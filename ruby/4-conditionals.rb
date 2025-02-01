#!/bin/ruby

number=123
if number == 123
	puts number == 123
end

if ! (number == 123)
	puts "number !=123"
else
	puts !(number == 123)
end

if number == 456
	puts "number == 456"
elsif number==123
	puts number!=456 && number==123
else
	puts "it's not 456 nor 123"
end

# unless number is equal to 1
unless (number == 1)
	puts "number !=1"
end

number1=2
number2=3

if (number1 < number2)
	puts number1 < number2
end
if ! (number1 > number2)
	puts number1 > number2
end

puts("is #{number1} == #{number1}? ")
if  number1 == number1
	puts number1 == number1
end

puts "is #{number1} != #{number2}?"
if (number1 != number2) 
	puts("yes")
end

puts ("is't true #{number1} == #{number2}? ")
if (!(number1 == number2)) 
	puts("yes")
end

puts("is't true #{number1} == #{number1} -> ", number1 == number1 ? "yes" : "no" )

