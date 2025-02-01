#!/bin/ruby

def foo
	puts "foo"
end

foo
foo()

def boo(arg)
  puts "boo: #{arg} #{arg.class}"
end

boo 123
boo(123)
boo 789
boo true

boo 987.to_s
boo "text"

def boo_def(arg=123)
	puts "boo_def: arg=#{arg}"
end

boo_def
boo_def 456

def add(arg1, arg2)
    puts "funkcja add dla #{arg1} i #{arg2}"
	return arg1 * arg2 if (arg1 == 10)
	arg1 + arg2
end

puts "1+2=#{add(1,2)}"
puts "10*2=#{add(10,2)}"

def get_number 
	456
end

puts "get_number:" + get_number.to_s

def echo(e)
	puts("echo e=#{e}")
    e-=1
    if (e > 0) 
		echo(e) 
	end
end

echo 10

def caller(val1 , val2 , arg)
	puts "caller dla #{arg}"
    if arg.respond_to?(:call)
      puts "arg has method :call"
  	 arg.call(val1, val2)
    else
      puts "arg doesn't hanve a method :call"
      puts "class for arg is: #{method(:add).class}"
      send(arg, val1, val2)
    end

end

puts "add.respond_to?(:class) = #{:add.respond_to?(:class)}"
puts ":add as method: #{method(:add).class}"
puts ":add.class to #{:add.class}"

puts "I call caller with add:"
puts "returned: #{caller(5, 10, :add)}"

s="text"
puts "s.length=#{s.length}"
puts "s.send=#{s.send(:length)}"
m=s.method(:length)
puts "m.call=#{m.call}"
eval "s.length"


def foo1(x) 
  puts "foo1: #{x} type=#{x.class}"
end

foo1(1)       
foo1("hello") 

f=Proc.new {
  |x| puts "f proc x=#{x}" ; x.to_s
}
puts "f.class: #{f.class} f.respond_to?(:call)=#{f.respond_to?(:call)}" 
wyn=f.call(10).class
puts "f.call returned: #{wyn} as #{wyn.class}"
puts "f is #{f} f.class to #{f.class}"


sum=Proc.new { |a,b| (a+b).to_s }
puts "sum=#{sum.call(1, 2)}"

sum1=Proc.new do |a,b| 
  (a+b).to_s 
end

puts "sum=#{sum.call(1, 2)}"
puts "sum1=#{sum1.call(1, 2)}"

decrement= ->(x , y) { x-y }
puts "decrement=#{decrement.call(3, 2)}"

def get_true()
    puts "get_true"
	true
end

t=:get_true
puts "send(t) returned: #{send(t)}"

def product(a, b)
   puts "product a=#{a} b=#{b}"
	a*b
end

i=:product
puts send(i, 3, 4)

def add_hex(arg1, arg2, fmt)
	"#{fmt}: %#{fmt}" % (arg1 + arg2)
end

def caller_hex(val1 , val2 , val3 , arg )
	puts("caller_hex")
	send(arg, val1, val2, val3)
end

puts add_hex(7, 8, "4d")
puts add_hex(7, 8, "04x")
puts add_hex(7, 8, "08b")

puts caller_hex(7, 8, "04x", :add_hex )
m_lambda = ->(x , y ) { x+y }
puts m_lambda.call(1,2)
puts m_lambda.class



