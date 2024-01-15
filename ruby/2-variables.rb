#!/bin/ruby


# komentarz
#

text="hello"
second_variable="second"

puts text
puts second_variable

puts text.class
puts text.class
variable="text"
puts variable

variable=123
puts variable

puts 1, 1.class
puts 1.0, 1.0.class
puts 100_000, 100_000.class

puts 1 == 1
puts 1 > 2
puts 1 <=> 2
puts 1 <=> 1
puts 2 <=> 1


variable="text"
puts "variable=#{variable}"
liczba=123
puts "liczba=#{liczba}"

cudzyslow="\""
puts "cudzyslow=#{cudzyslow}"

text=%(jakis sobie tekst w "cudzyslowiu")
puts "text=#{text}"

unicode_text="litera ł=\u{142}"
puts unicode_text

text="ala"
puts text.size

nic=nil
puts nic

#komentarz
# bool 
puts true, false

puts {1}.class
puts (1).class

#puts typeof( (x : Int32) { x.to_s } )

puts 15.to_s(16)
puts "%#04x" % 15

zmienna=10
Stala=20

zmienna+=1

puts zmienna
puts Stala

h={"key"=> "value"}
puts h

h1={:klucz => "value"}
puts h1

r=1..10
puts r

module Miesiac 
		STYCZEN=1
		LUTY=2
		Maj=5
		Czerwiec=6
end

puts Miesiac::STYCZEN
puts Miesiac::Maj
puts Miesiac::Czerwiec

