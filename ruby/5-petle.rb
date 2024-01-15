#!/bin/ruby
licznik=0

while licznik < 10
	puts "licznik: #{licznik}"
	licznik+=1
end

until licznik == 20
	puts "licznik: #{licznik}"
	licznik+=1
end

until  licznik == 30
	if licznik == 25 
		puts "25 nie lubie"
		licznik+=1
		next
	elseif
		puts "licznik: #{licznik}"
	end
	licznik+=1
end

while true
	if licznik == 35
		puts "dość liczenia"
		break;
	end
	puts "licznik: #{licznik}"
	licznik+=1
end

(1..5).each do | i|
	puts "i=#{i}"
end

for l in (1..5)
	puts "for l=#{l}"
end

liczba=["jeden", "dwa", "trzy"]
liczba.each do | l |
	puts l
end

for f in liczba
  puts "f=#{f}"
end

