#!/bin/lua

-- komentarz

--[[
	 długi komentarz
	 na kilka linii
 ]]

--[[
	 -- testowy kod
	 -- jak się doda --- na początku to się wykona
	 print("testowy kod")
-- ]]


string ="hello"
liczba=123
znak='a'

print("string=" .. string .. " liczba=" .. liczba .. " znak=" .. znak)
print("string=", string, "liczba=", liczba, "znak=", znak)
print("długość stringu \"" .. string .. "\"=", #string)
print(arg[0]) -- script name

print(type(string))
print(type(liczba))
print(type(znak))
print(type(print))
print(type(true))
print(type(false))
print(type(nil))

f=print
f("wola print jako f()")

print("10+1=", 10 + 1)
print("\"10\" + 1=", "10" + 1)

print(tonumber("10") + 1)
print("10" + tostring(1))

print("łączenie stringów 10" .. 1)
print("łączenie z przecinkiem 10", 1)

print(type(tostring(123)))

