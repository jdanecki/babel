#!/bin/crystal

# comment
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
number=123
p! "number=#{number}"

quote="\""
p! "quote=#{quote}"

text=%(some text in "quotes")
p! "text=#{text}"

unicode_text="letter ł=\u{142}"
p! unicode_text

text="ala"
p! text.size

nothing=nil
p! nothing


# bool 
p! true, false

p! typeof({1})
p! typeof((1))

#p! typeof( (x : Int32) { x.to_s } )

p! 15.to_s(16)
p! "%#04x" % 15

variable=10
Constant=20

variable+=1

p! variable
p! Constant

h={"key"=> "value"}
p! h

r=1..10
p! r
enum Month 
    January
    February
    May=5
    June
end

p! Month::January
p! Month::May
p! Month::June

