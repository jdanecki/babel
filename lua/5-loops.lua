#!/bin/lua

e=0

for i=0, 9, 1
do
	print("inc i=", i)
	b=i
end

for i=b, 20
do
	print("inc auto i=", i)
	c=i
end

for i=c, 1, -1
do
	print("dec i=", i)
	d=i
end

print("start: d=", d);
while (d < 50)
do
	print("d=", d, "e=", e)
	e=e+1
	d=d+1
	if (e > 10) 
	then
		break
	end
end

print("start: d=", d);
repeat
	print("d=", d)
	d=d+1
until d > 15

for  h=0, 10
do
	if h == 4
	then
		print("I've got 4")
		goto continue -- starting with lua 5.2
	elseif h== 5 
	then 
			print("side jump", h)
			goto continue
		elseif h == 1
		then
			print("one")
		else
			print("something other than 1, because", h)
	end
	::continue::
end

