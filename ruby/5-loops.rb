#!/bin/ruby
counter=0

while counter < 10
	puts "counter: #{counter}"
	counter+=1
end

until counter == 20
	puts "counter: #{counter}"
	counter+=1
end

until  counter == 30
	if counter == 25 
		puts "I don't like 25"
		counter+=1
		next
	elseif
		puts "counter: #{counter}"
	end
	counter+=1
end

while true
	if counter == 35
		puts "enough with counting"
		break;
	end
	puts "counter: #{counter}"
	counter+=1
end

(1..5).each do | i|
  puts "1..5 -> i=#{i}"
end

for l in (1...5)
  puts "for 1...5 -> l=#{l}"
  case 
  when l == 3
    puts "l=3"
  end
end

5.times do |a|
  puts "5.times a=#{a}"
end

number=["one", "two", "tree"]
number.each do | l |
	puts l
end

for f in number
  puts "f=#{f}"
  case f
  when "two"
    puts "it's two"
  else
    puts "something else than two"
  end
end



