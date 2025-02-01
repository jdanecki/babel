#!/bin/crystal

number=123
if number == 123
    p! number == 123
end

if ! (number == 123)
    puts "number !=123"
else
    p! !(number == 123)
end

if number == 456
    puts "number == 456"
elsif number==123
    p! number!=456 && number==123
else
    puts "neither 456 nor 123"
end

# unless number is equal to 1
unless (number == 1)
    puts "number !=1"
end
number1=2
number2=3

if (number1 < number2)
    p! number1 < number2
end
if ! (number1 > number2)
    p! number1 > number2
end

puts("is #{number1} == #{number1}? ")
if  number1 == number1
    p! number1 == number1
end

puts "is #{number1} != #{number2}?"
if (number1 != number2) 
    puts("yes")
end

puts ("is it not true that #{number1} == #{number2}? ")
if (!(number1 == number2)) 
    puts("yes")
end
puts("is it true that #{number1} == #{number1} -> ", number1 == number1 ? "yes" : "no" )
