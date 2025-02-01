#!/bin/lua
function product(a, b)
    print("product", a, "and", b, "=", a and b)
end

function sum(a, b)
    print("sum", a, "or", b, "=", a or b)
end

function sum_xor(a, b)
    print("sum modulo2", a, "~", b, "=", a ~ b)
end

function negation(a)
    print("negation not " .. a, "=", not a)
end

zero=0
one=1
product(zero, zero)
product(zero, one)
product(one, zero)
product(one, one)

sum(zero, zero)
sum(zero, one)
sum(one, zero)
sum(one, one)

sum_xor(zero, zero)
sum_xor(zero, one)
sum_xor(one, zero)
sum_xor(one, one)

negation(zero)
negation(one)

product(false, false)
product(false, true)
product(true, false)
product(true, true)

sum(false, false)
sum(false, true)
sum(true, false)
sum(true, true)

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

