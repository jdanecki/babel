#!/bin/crystal

def foo
	puts "foo"
end

foo
foo()

def boo(arg)
	puts "zwykłe boo: #{arg}"
end

def boo(arg : Int32)
	puts "boo_for_int: arg=#{arg}"
end


def boo(arg : String)
	puts "boo_for_String: arg=#{arg}"
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
	return arg1 * arg2 if (arg1 == 10)
	arg1 + arg2
end

puts "1+2=#{dodaj(1,2)}"
puts "10*2=#{dodaj(10,2)}"

def daj_liczbe : Int32
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

def caller(val1 : Int32, val2 : Int32, &foo : (Int32, Int32) -> Int32) : Int32
	puts("caller")
	foo.call(val1, val2)
end

caller(5, 10, &->dodaj(Int32, Int32) )

def foo(x : T) forall T
  puts "#{x} type=#{T}"
end

foo(1)       # => Int32
foo("hello") # => String

f=Proc(Int32, String).new { |x| x.to_s }

p! f.call(10)
p! f

alias Alias = Int32 -> Int32
p! Alias
f1=Alias.new {|x| x + 1 }
p! f1.call(10)

suma=Proc(Int32, Int32, String).new { |a,b| (a+b).to_s }
p! suma.call(1, 2)

roznica= ->(x : Int32, y : Int32) { x-y }
p! roznica.call(3, 2)

def get_true()
	true
end

t= ->get_true
p! t.call

def iloczyn(a, b)
	a*b
end

i= ->iloczyn(Int32, Int32)
p! i.call(3, 4)


def dodaj_hex(arg1, arg2, fmt)
	"#{fmt}: %#{fmt}" % (arg1 + arg2)
end

def caller_hex(val1 : Int32, val2 : Int32, val3 : String, &foo : (Int32, Int32, String) -> String)
	puts("caller_hex")
	foo.call(val1, val2, val3)
end


p! dodaj_hex(7, 8, "4d")
p! dodaj_hex(7, 8, "04x")
p! dodaj_hex(7, 8, "08b")

p! caller_hex(7, 8, "04x", &->dodaj_hex(Int32, Int32, String) )

lambda = ->(x : Int32, y : Int32) { x+y }
p! lambda.call(1,2)


