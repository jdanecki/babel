package main
import "fmt"

func dodaj(a, b int ) int {
	return a+b
}

func echo(e int) {
	fmt.Printf("echo e=%d\n", e); 
	e--
	if (e > 0) { echo(e) }
}
type operation func(int, int ) int

func increment(what *int, to *int) {
    fmt.Printf("increment: received *what=%d what=%p *to=%d to=%p\n", *what, what, *to, to)
    (*what)++
    *to++
    fmt.Printf("increment: returning *what=%d what=%p *to=%d, to=%p\n", *what, what, *to, to )
}

func main() {
	a:=2
	b:=3
fmt.Printf("%d + %d = %d\n", a, b, add(a, b))

echo(10)
var fun_ptr operation
fun_ptr=add
fmt.Printf("result of operation on %d and %d=%d\n", a, b, fun_ptr(a,b))

fmt.Printf("a = %d b=%d\n", a, b)
increment(&a, &b)
fmt.Printf("a after increment= %d\n", a)
fmt.Printf("b after increment= %d\n", b)
}
