#!/bin/lua

rozmiar=10
rozmiar_x=2
rozmiar_y=5

tablica={}
kartka={}

for i=0, rozmiar
do	
   tablica[i] = 100+i
   print("tablica[" .. i .. "]=", tablica[i])
end

for y=0, rozmiar_y
do
	kartka[y]={}
	for x=0, rozmiar_x
	do
		kartka[y][x] = 10*y+x
		print("kartka[" .. y .. "][" .. x .. "] = ", kartka[y][x])
	end
end

tab={1, 2, 3}
print("tab[0]=", tab[0])
print("tab[1]=", tab[1])

print("rozmiar tablicy tab=", #tab)
print("pairs")
for k,v in pairs(tab) do
   print(k,v)
end

print("ipairs")
for k,v in ipairs(tab) do
   print(k,v)
end

function dodaj(a,b)
	return a+b
end

print("dodaj=", dodaj(1,2))

Tablica={
	value=0; 
	nazwa="tablica",
	dodaj}

tab={"jeden", "dwa"}
tab1={"jeden"; "dwa"}

print("Tablica type=",type(Tablica))
print("Tablica.value=", Tablica.value, "Tablica.nazwa=", Tablica.nazwa, "rozmiar Tablica=", #Tablica)
print("rawget(Tablica, 1)=", rawget(Tablica, 1))
print("rawget(Tablica, nazwa)=", rawget(Tablica, "nazwa"))

print("tab[1]=", tab[1])
print("tab1[1]=", tab1[1])
tab[1]="wartosc0"
print("tab[1]=", tab[1], rawget(tab, 1))

print("{tab}")
for k,v in ipairs(tab) do
   print(k,v)
end

print("{Tablica}")
for k,v in pairs(Tablica) do
   print(k,v)
end
print("Tablica[1] type=", type(Tablica[1]))
foo=Tablica[1]
a=foo(2,3)
print("a=",a)
print("Tablica[1](2,3)=", (Tablica[1])(2,3) )

print("{table}")
for k,v in pairs(table) do
   print(k,v)
end


tab2={
	wartosc=10
}

stead = {
	lista = {}
}
print("stead type=", type(stead))
for k,v in pairs(stead) do
   print("sted=", k,v)
end

std=stead

print("std type=", type(std))
for k,v in pairs(std) do
   print("std=", k,v)
end

function std.class(self, par)
	print("std.class -> self=", self, "par=", par)
	for k,v in pairs(self) do
	   print("std.class.self=", k,v)
	end
	meta=getmetatable(self)
	print("self metatable=", meta)
	m={
	__call = function(self, par)
		print("calling __call z", self, par)
		if (type(par) == "table") 
		then
			for k,v in pairs(par) do
				  print("par->", k,v)
			end
		end
	end
	}
	setmetatable(self, m)
	return self
end

std.obj = std.class {
	nam= "nazwa";
	pokaz = function(self)
		print("std.obj.pokaz self=", self)
	end
}

print("std.obj type=", type(std.obj))
	
for k,v in pairs(std.obj) do
	  print("std.obj=", k,v)
end

meta=getmetatable(std.obj)
if meta ~= nil
then
	print("metatable dla std.obj=", meta)
	for k,v in pairs(meta) do
		  print("std.obj.metadata->", k,v)
	end
else
	print("metatable dla std.obj to nil")
end

click = std.obj {
	nam="click"
}



