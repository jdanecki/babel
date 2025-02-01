#!/bin/crystal

number1=2
number2=3

# arithmetic
p! number1 + number2
p! number1 - number2
p! number1 * number2
p! number1 / number2

p! number1-=10
p! number1+=10

# logical
p! true && true
p! false || true
p! !true
# xor
p! true != true

p! "foo" =~ /fo/
p! "foo" !~ /fo/
p! "foo" === /foo/

p! 1..10
p! 1...10

