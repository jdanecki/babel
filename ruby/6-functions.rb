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

def dodaj(arg1, arg2)
    puts "funkcja dodaj dla #{arg1} i #{arg2}"
	return arg1 * arg2 if (arg1 == 10)
	arg1 + arg2
end

puts "1+2=#{dodaj(1,2)}"
puts "10*2=#{dodaj(10,2)}"

def daj_liczbe 
	456
end

puts "daj_liczbe:" + daj_liczbe.to_s

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
      puts "arg ma metodę :call"
  	 arg.call(val1, val2)
    else
      puts "arg nie ma metody :call"
      puts "class dla arg to: #{method(:dodaj).class}"
      send(arg, val1, val2)
    end

end

puts "dodaj.respond_to?(:class) = #{:dodaj.respond_to?(:class)}"
puts ":dodaj jako metoda: #{method(:dodaj).class}"
puts ":dodaj.class to #{:dodaj.class}"

puts "wołam caller z dodaj:"
puts "zwróciło: #{caller(5, 10, :dodaj)}"

s="napis"
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
puts "f.call zwróciło: #{wyn} jako #{wyn.class}"
puts "f to #{f} f.class to #{f.class}"


suma=Proc.new { |a,b| (a+b).to_s }
puts "suma=#{suma.call(1, 2)}"

suma1=Proc.new do |a,b| 
  (a+b).to_s 
end

puts "suma=#{suma.call(1, 2)}"
puts "suma1=#{suma1.call(1, 2)}"

roznica= ->(x , y) { x-y }
puts "roznica=#{roznica.call(3, 2)}"

def get_true()
    puts "get_true"
	true
end

t=:get_true
puts "send(t) zwróciło: #{send(t)}"

def iloczyn(a, b)
   puts "iloczyn a=#{a} b=#{b}"
	a*b
end

i=:iloczyn
puts send(i, 3, 4)

def dodaj_hex(arg1, arg2, fmt)
	"#{fmt}: %#{fmt}" % (arg1 + arg2)
end

def caller_hex(val1 , val2 , val3 , arg )
	puts("caller_hex")
	send(arg, val1, val2, val3)
end

puts dodaj_hex(7, 8, "4d")
puts dodaj_hex(7, 8, "04x")
puts dodaj_hex(7, 8, "08b")

puts caller_hex(7, 8, "04x", :dodaj_hex )
m_lambda = ->(x , y ) { x+y }
puts m_lambda.call(1,2)
puts m_lambda.class



