#!/bin/ruby

liczba=123
if liczba == 123
	puts liczba == 123
end

if ! (liczba == 123)
	puts "liczba !=123"
else
	puts !(liczba == 123)
end

if liczba == 456
	puts "liczba == 456"
elsif liczba==123
	puts liczba!=456 && liczba==123
else
	puts "ani 456 ani 123"
end

# chyba że liczba nie jest równa 1
unless (liczba == 1)
	puts "liczba !=1"
end

liczba1=2
liczba2=3

if (liczba1 < liczba2)
	puts liczba1 < liczba2
end
if ! (liczba1 > liczba2)
	puts liczba1 > liczba2
end

puts("czy #{liczba1} == #{liczba1}? ")
if  liczba1 == liczba1
	puts liczba1 == liczba1
end

puts "czy #{liczba1} != #{liczba2}?"
if (liczba1 != liczba2) 
	puts("tak")
end

puts ("czy to nieprawda, że #{liczba1} == #{liczba2}? ")
if (!(liczba1 == liczba2)) 
	puts("tak")
end

puts("czy to prawda, że #{liczba1} == #{liczba1} -> ", liczba1 == liczba1 ? "tak" : "nie" )

