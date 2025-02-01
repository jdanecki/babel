#!/bin/lua

number1=2
number2=3

if number1 < number2 
then
    print(number1, "<", number2, " -> ", number1 < number2)
end		
print(number1, ">", number2, " -> ", number1 > number2)

print("is", number1, "==", number1, "? ->", number1 == number1)
print("is", number1, "~=", number1, "? ->", number1 ~= number1)
print("is", number1, "~=", number2, "? ->", number1 ~= number2)

print("is it not true that", number1 , "==", number2)
if  not (number1 == number2)  
then
    print("yes")
end-- number1 == number1 ? "yes" : "no"
print("is it true that ", number1, "==", number1, (number1 == number1) and  "yes" or "no" )

if number1 ~= 2
then
    print("number1~=2")
else	
    print("number1=2")
end
