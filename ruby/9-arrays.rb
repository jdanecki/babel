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

size=10
size_x=2
size_y=5

array=Array.new(size, 123)
puts array.size
puts array[0]

(0..size-1).each do |i|
   array[i] = 100+i
   puts "array[#{i}]=#{array[i]}"
end

tab1=Array.new(size)
puts tab1.size

(0..size-1).each do |i|
   tab1 << 200+i
   puts "tab1[#{i}]=#{tab1[i]} tab1.size=#{tab1.size}"
end

sheet = Array.new(size_y) { Array.new(size_x) { 0 } }
puts sheet

(0..size_y-1).each do |y|
	(0..size_x-1).each do |x|
		sheet[y][x] = 10*y+x
		puts "sheet[#{y}][#{x}] = #{sheet[y][x]}"
	end
end

