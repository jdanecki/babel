#!/bin/ruby
Car = Struct.new(:brand , :year) do
    def show
        puts "brand: #{brand}"
        puts "year: #{year}"
    end
end

def show(s)
        puts "brand: #{s.brand}"
        puts "year: #{s.year}"
end

volvo = Car.new("volvo v40", 2010) 
    
volvo.show()
show(volvo)

volvo.brand = "volvo v70"
volvo.year = 2020
show(volvo)

class Point
    attr_accessor :x, :y, :sum, :extra
    def initialize(a, b, c )
        @x=a
        @y=b
        @sum=a+b
        @extra=c
    end
    def get_x
        @x
    end
    def get_y
        @y
    end
end

p=Point.new(1,2, 5)
puts "point: x=#{p.get_x} y=#{p.get_y} x=#{p.x} y=#{p.y}"
p.x=10
p.extra=20
puts "point: x=#{p.get_x} y=#{p.get_y} x=#{p.x} y=#{p.y}"
puts p.sum
puts p.sum
puts p.extra
puts "p.send \"get_x\" #{p.send "get_x"}"
