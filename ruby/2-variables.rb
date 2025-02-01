#!/bin/ruby


# comment
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
number=123
puts "number=#{number}"

cudzyslow="\""
puts "quote=#{quote}"  
text=%(some random text in "quotes")  
puts "text=#{text}"

unicode_text="char ł=\u{142}"
puts unicode_text

text="ala"
puts text.size

nic=nil
puts nic

#comment
# bool 
puts true, false

puts {1}.class
puts (1).class

#puts typeof( (x : Int32) { x.to_s } )

puts 15.to_s(16)
puts "%#04x" % 15

variable=10
Constant=20

variable+=1

puts variable
puts Constant

h={"key"=> "value"}
puts h

h1={:key => "value"}
puts h1

r=1..10
puts "range 1..10=#{r}"

r=1...10
puts "range 1...10=#{r}"

module Month 
		JANUARY=1
		FEBRUARY=2
		May=5
		July=6
end

puts Month::JANUARY
puts Month::May
puts Month::July

puts "1.to_s => #{1.to_s} #{1.to_s.class}"
puts "\"1\".to_i => #{1.to_s.to_i} #{1.to_s.to_i.class}"
puts "\"1.1\".to_f => #{1.1.to_s.to_f} #{1.1.to_s.to_f.class}"

puts "ala"+"cat"
puts "1"+"2"
puts "echo" * 4

puts "letni".reverse

puts "#tag".include?"#"

text=<<END
some
long text
END

puts text


