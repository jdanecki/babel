#!/bin/lua
function add(a, b)
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

function increment(what, to)
    print("increment: received what=", what, "to=", to)
    what=what+1
    to=to+1
    print("increment: returning what=", what, "to=", to)
    return what, to
end

a=2
b=3
print(a, "+", b, "=", add(a, b))

echo(10)

operation=add;
print("result of operation on", a, "and", b, "=", operation(a,b))

operation1 = function(a, b)
    return a-b;
end

print("operation1 subtract on", a, "and", b,"=", operation1(a,b))

print("a=", a, "b=", b)
a, b = increment(a, b)
print("a after increment=", a)
print("b after increment=", b)

foo=function(f)
    print("function foo: f=", f)
    if (type(f) == "table") 
    then
        print("f is a table")
    else
        print("f is a ", type(f))
    end
end

foo(123)
foo {456}
foo({789})
print("foo type=", type(foo))


