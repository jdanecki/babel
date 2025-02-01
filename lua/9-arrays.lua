#!/bin/lua
size=10
size_x=2
size_y=5

array={}
sheet={}

for i=0, size
do	
    array[i] = 100+i
    print("array[" .. i .. "]=", array[i])
end

for y=0, size_y
do
    sheet[y]={}
    for x=0, size_x
    do
        sheet[y][x] = 10*y+x
        print("sheet[" .. y .. "][" .. x .. "] = ", sheet[y][x])
    end
end

tab={1, 2, 3}
print("tab[0]=", tab[0])
print("tab[1]=", tab[1])

print("size of array tab=", #tab)
print("pairs")
for k,v in pairs(tab) do
    print(k,v)
end

print("ipairs")
for k,v in ipairs(tab) do
    print(k,v)
end
function add(a,b)
    return a+b
end

print("add=", add(1,2))

Table={
    value=0; 
    name="table",
    add}

tab={"one", "two"}
tab1={"one"; "two"}

print("Table type=",type(Table))
print("Table.value=", Table.value, "Table.name=", Table.name, "size of Table=", #Table)
print("rawget(Table, 1)=", rawget(Table, 1))
print("rawget(Table, name)=", rawget(Table, "name"))

print("tab[1]=", tab[1])
print("tab1[1]=", tab1[1])
tab[1]="value0"
print("tab[1]=", tab[1], rawget(tab, 1))

print("{tab}")
for k,v in ipairs(tab) do
   print(k,v)
endprint("{Table}")
for k,v in pairs(Table) do
    print(k,v)
end
print("Table[1] type=", type(Table[1]))
foo=Table[1]
a=foo(2,3)
print("a=",a)
print("Table[1](2,3)=", (Table[1])(2,3) )

print("{table}")
for k,v in pairs(table) do
    print(k,v)
end

tab2={
    value=10
}

stead = {
    list = {}
}
print("stead type=", type(stead))
for k,v in pairs(stead) do
    print("stead=", k,v)
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
    nam= "name";
    show = function(self)
        print("std.obj.show self=", self)
    end
}

print("std.obj type=", type(std.obj))
	
for k,v in pairs(std.obj) do
	  print("std.obj=", k,v)
end

meta=getmetatable(std.obj)
if meta ~= nil
then
	print("metatable for std.obj=", meta)
	for k,v in pairs(meta) do
		  print("std.obj.metadata->", k,v)
	end
else
	print("metatable for std.obj to nil")
end

click = std.obj {
	nam="click"
}



