#!/bin/lua

-- comment

--[[
     long comment
     on multiple lines
 ]]

--[[
     -- test code
     -- if you add --- at the beginning it will execute
     print("test code")
-- ]]


string ="hello"
number=123
char='a'

print("string=" .. string .. " number=" .. number .. " char=" .. char)
print("string=", string, "number=", number, "char=", char)
print("length of string \"" .. string .. "\"=", #string)
print(arg[0]) -- script name

print(type(string))
print(type(number))
print(type(char))
print(type(print))
print(type(true))
print(type(false))
print(type(nil))

f=print
f("calling print as f()")

print("10+1=", 10 + 1)
print("\"10\" + 1=", "10" + 1)

print(tonumber("10") + 1)
print("10" + tostring(1))

print("concatenating strings 10" .. 1)
print("concatenating with comma 10", 1)
print(type(tostring(123)))

