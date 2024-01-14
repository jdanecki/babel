#!/bin/lua

liczba1=2
liczba2=3

if liczba1 < liczba2 
then
	print(liczba1, "<", liczba2, " -> ", liczba1 < liczba2)
end		
print(liczba1, ">", liczba2, " -> ", liczba1 > liczba2)

print("czy", liczba1, "==", liczba1, "? ->", liczba1 == liczba1)
print("czy", liczba1, "~=", liczba1, "? ->", liczba1 ~= liczba1)
print("czy", liczba1, "~=", liczba2, "? ->", liczba1 ~= liczba2)

print("czy to nieprawda, że", liczba1 , "==", liczba2)
if  not (liczba1 == liczba2)  
then
		print("tak")
end

-- liczba1 ==liczba1 ? "tak" : "nie"
print("czy to prawda, że ", liczba1, "==", liczba1, (liczba1 == liczba1) and  "tak" or "nie" )

if liczba1 ~= 2
then
	print("liczba1~=2")
else	
	print("liczba1=2")
end
