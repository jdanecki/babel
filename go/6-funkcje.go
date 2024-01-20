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

type operacja func(int, int ) int

func zwieksz(co *int, to *int) {
	fmt.Printf("zwieksz: dostałem *co=%d co=%p *to=%d to=%p\n", *co, co, *to, to)
	(*co)++
	*to++
	fmt.Printf("zwieksz: oddaję *co=%d co=%p *to=%d, to=%p\n", *co, co, *to, to )
}

func main() {
	a:=2
	b:=3

	fmt.Printf("%d + %d = %d\n", a, b, dodaj(a, b))

	echo(10)
	var fun_ptr operacja
	fun_ptr=dodaj
	fmt.Printf("wynik operacji na %d i %d=%d\n", a, b, fun_ptr(a,b))

	fmt.Printf("a = %d b=%d\n", a, b)
	zwieksz(&a, &b)
	fmt.Printf("a po zwiekszeniu= %d\n", a)
	fmt.Printf("b po zwiekszeniu= %d\n", b)
}
