#!/bin/crystal


# komentarz
#

text="hello"
second_variable="second"

puts text
puts second_variable

puts typeof(text)
p! typeof(text)

variable="text"
p! variable

variable=123
p! variable

p! 1, typeof(1)
p! 1.0, typeof(1.0)
p! 100_000, typeof(100_000)

p! 1 == 1
p! 1 > 2
p! 1 <=> 2
p! 1 <=> 1
p! 2 <=> 1

variable="text"
p! "variable=#{variable}"
liczba=123
p! "liczba=#{liczba}"

cudzyslow="\""
p! "cudzyslow=#{cudzyslow}"

text=%(jakis sobie tekst w "cudzyslowiu")
p! "text=#{text}"

unicode_text="litera ł=\u{142}"
p! unicode_text

text="ala"
p! text.size

nic=nil
p! nic

#komentarz
# bool 
p! true, false

p! typeof({1})
p! typeof((1))

#p! typeof( (x : Int32) { x.to_s } )

p! 15.to_s(16)
p! "%#04x" % 15

zmienna=10
Stala=20

zmienna+=1

p! zmienna
p! Stala

h={"key"=> "value"}
p! h

r=1..10
p! r

enum Miesiac 
		Styczen
		Luty
		Maj=5
		Czerwiec
end

p! Miesiac::Styczen
p! Miesiac::Maj
p! Miesiac::Czerwiec

