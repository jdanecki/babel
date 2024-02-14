#!/bin/lua

function dodaj(a, b)
	return a+b
end

function echo(e)
	print("echo:", e)
	e=e-1
	if e > 0
	then 
		echo(e) 
	end
end

function zwieksz(co, to)
	print("zwieksz: dostałem co=", co, "to=", to)
	co=co+1
	to=to+1
	print("zwieksz: oddaję co=", co, "to=", to)
	return co, to
end

a=2
b=3

print(a, "+", b, "=", dodaj(a, b))

echo(10)

operacja=dodaj;
print("wynik operacji na", a, "i", b, "=", operacja(a,b))

operacja1 = function(a, b)
	return a-b;
end

print("operacja1 odejmij na", a, "i", b,"=", operacja1(a,b))

print("a=", a, "b=", b)
a, b = zwieksz(a, b)
print("a po zwiekszeniu=", a)
print("b po zwiekszeniu=", b)

foo=function(f)
	print("function foo: f=", f)
	if (type(f) == "table") 
	then
		print("f to tablica")
	else
		print("f to ", type(f))
	end
end

foo(123)
foo {456}
foo({789})
print("foo type=", type(foo))


