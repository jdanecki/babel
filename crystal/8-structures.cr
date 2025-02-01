#!/bin/crystal
struct Car
    @brand : String
    @year : Int32
    def initialize(@brand, @year)
        puts "Car.initialize"
    end
    def show
        puts "brand: #{@brand}"
        puts "year: #{@year}"
    end
end

def show(s)
    puts "brand: #{s.@brand}"
    puts "year: #{s.@year}"
end

volvo = Car.new("volvo v40", 2010) 
    
volvo.show()
show(volvo)

struct Point
    @x : Int32 # instance variable
    setter x
    @y : Int32
    property sum : Int32
    property extra
    def initialize(a, b, @extra : Int32)
        @x=a
        @y=b
        @sum=a+b
    end
    def get_x
        @x
    end
    def get_y
        @y
    end
end

p=Point.new(1,2, 5)
p! "point: x=#{p.get_x} y=#{p.get_y} x=#{p.@x} y=#{p.@y}"
p.x=10
p.extra=20
p! "point: x=#{p.get_x} y=#{p.get_y} x=#{p.@x} y=#{p.@y}"
p! p.@sum
p! p.sum
p! p.extra


