#!/bin/ruby

Samochod = Struct.new(:marka , :rok) do
	def show
		puts "marka: #{marka}"
		puts "rok: #{rok}"
	end
end

def pokaz(s)
		puts "marka: #{s.marka}"
		puts "rok: #{s.rok}"
end

volvo = Samochod.new("volvo v40", 2010) 
	
volvo.show()
pokaz(volvo)

volvo.marka = "volvo v70"
volvo.rok = 2020
pokaz(volvo)

class Punkt
	attr_accessor :x, :y, :suma, :dodatek
	def initialize(a, b, c )
		@x=a
		@y=b
		@suma=a+b
        @dodatek=c
	end
	def get_x
		@x
	end
	def get_y
		@y
	end
end

p=Punkt.new(1,2, 5)
puts "punkt: x=#{p.get_x} y=#{p.get_y} x=#{p.x} y=#{p.y}"
p.x=10
p.dodatek=20
puts "punkt: x=#{p.get_x} y=#{p.get_y} x=#{p.x} y=#{p.y}"
puts p.suma
puts p.suma
puts p.dodatek

