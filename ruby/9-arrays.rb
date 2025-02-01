#!/bin/ruby

tab=[1,2]

puts tab
puts tab.class
puts tab[0]

(0..1).each do |i|
	puts "tab[#{i}]=#{tab[i]}"
end
tab.each do |i|
	puts "val=#{i}"
end

rozmiar=10
rozmiar_x=2
rozmiar_y=5

tablica=Array.new(rozmiar, 123)
puts tablica.size
puts tablica[0]

(0..rozmiar-1).each do |i|
   tablica[i] = 100+i
   puts "tablica[#{i}]=#{tablica[i]}"
end

tab1=Array.new(rozmiar)
puts tab1.size

(0..rozmiar-1).each do |i|
   tab1 << 200+i
   puts "tab1[#{i}]=#{tab1[i]} tab1.size=#{tab1.size}"
end

kartka = Array.new(rozmiar_y) { Array.new(rozmiar_x) { 0 } }
puts kartka

(0..rozmiar_y-1).each do |y|
	(0..rozmiar_x-1).each do |x|
		kartka[y][x] = 10*y+x
		puts "kartka[#{y}][#{x}] = #{kartka[y][x]}"
	end
end

