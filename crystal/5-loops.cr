#!/bin/crystal
counter=0

while counter < 10
    puts "counter: #{counter}"
    counter+=1
end

until counter == 20
    puts "counter: #{counter}"
    counter+=1
end

until counter == 30
    if counter == 25 
        puts "25 I don't like"
        counter+=1
        next
    else
        puts "counter: #{counter}"
    end
    counter+=1
end

while true
    if counter == 35
        puts "enough counting"
        break;
    end
    puts "counter: #{counter}"
    counter+=1
end

(1..5).each do |i|
    puts i
end

numbers=["one", "two", "three"]
liczba.each do | l |
	puts l
end

