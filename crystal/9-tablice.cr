#!/bin/crystal

tab=[1,2]

p! tab
p! typeof(tab)
p! tab.class
p! tab[0]

(0..1).each do |i|
	puts "tab[#{i}]=#{tab[i]}"
end
tab.each do |i|
	puts "val=#{i}"
end

rozmiar=10
rozmiar_x=2
rozmiar_y=5

tablica=Array(Int32).new(rozmiar, 123)
p! tablica.size
p! tablica[0]

(0..rozmiar-1).each do |i|
   tablica[i] = 100+i
   puts "tablica[#{i}]=#{tablica[i]}"
end

tab1=Array(Int32).new(rozmiar)
p! tab1.size

(0..rozmiar-1).each do |i|
   tab1 << 200+i
   puts "tab1[#{i}]=#{tab1[i]} tab1.size=#{tab1.size}"
end

kartka = Array(Array(Int32)).new(rozmiar_y) { Array(Int32).new(rozmiar_x) { 0 } }
p! kartka

(0..rozmiar_y-1).each do |y|
	(0..rozmiar_x-1).each do |x|
		kartka[y][x] = 10*y+x
		puts "kartka[#{y}][#{x}] = #{kartka[y][x]}"
	end
end

