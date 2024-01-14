#!/bin/crystal

struct Samochod
	@marka : String
	@rok : Int32
	def initialize(@marka, @rok)
		puts "Samochod.initialize"
	end
	def show
		puts "marka: #{@marka}"
		puts "rok: #{@rok}"
	end
end

def pokaz(s)
		puts "marka: #{s.@marka}"
		puts "rok: #{s.@rok}"
end

volvo = Samochod.new("volvo v40", 2010) 
	
#volvo.marka = "volvo v40"
#volvo.rok = 2010
volvo.show()
pokaz(volvo)


struct Punkt
	@x : Int32 # instance variable
	setter x
	@y : Int32
	property suma : Int32
	property dodatek
	def initialize(a, b, @dodatek : Int32)
		@x=a
		@y=b
		@suma=a+b
	end
	def get_x
		@x
	end
	def get_y
		@y
	end
end

p=Punkt.new(1,2, 5)
p! "punkt: x=#{p.get_x} y=#{p.get_y} x=#{p.@x} y=#{p.@y}"
p.x=10
p.dodatek=20
p! "punkt: x=#{p.get_x} y=#{p.get_y} x=#{p.@x} y=#{p.@y}"
p! p.@suma
p! p.suma
p! p.dodatek


