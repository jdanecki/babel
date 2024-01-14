#!/bin/lua

function iloczyn(a, b)
	print("iloczyn", a, "and", b, "=", a and b)
end

function suma(a, b)
	print("suma", a, "or", b, "=", a or b)
end

function suma_xor(a, b)
	print("suma modulo2", a, "~", b, "=", a ~ b)
end

function negacja( a)
	print("negacja not " .. a, "=", not a)
end

zero=0
jeden=1

iloczyn(zero, zero)
iloczyn(zero, jeden)
iloczyn(jeden, zero)
iloczyn(jeden, jeden)

suma(zero, zero)
suma(zero, jeden)
suma(jeden, zero)
suma(jeden, jeden)

suma_xor(zero, zero)
suma_xor(zero, jeden)
suma_xor(jeden, zero)
suma_xor(jeden, jeden)

negacja(zero)
negacja(jeden)

iloczyn(false, false)
iloczyn(false, true)
iloczyn(true, false)
iloczyn(true, true)

suma(false, false)
suma(false, true)
suma(true, false)
suma(true, true)

if (true)
then
	print("true")
end	

if (not true)
then
	print("true")
else	
	print("not true")
end	

a=3
b=1
c=2
-- od lua 5.3
print("iloczyn:", a, "&", b, "=", a & b)
print("suma:", b, "|", c, "=", b | c)
print("suma modulo 2 (xor)", b, "~", c, "=", b ~ c)
print("negacja ~", b, "=", ~b)

