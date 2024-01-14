#!/bin/crystal

liczba1=2
liczba2=3

#arytmetyczne
p! liczba1 + liczba2
p! liczba1 - liczba2
p! liczba1 * liczba2
p! liczba1 / liczba2

p! liczba1-=10
p! liczba1+=10

#logiczne
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

