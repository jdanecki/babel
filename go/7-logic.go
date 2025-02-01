package main
import "fmt"
func product(a, b bool) {
    fmt.Printf("product %t && %t = %t\n", a, b, a && b)
}

func sum(a, b bool) {
    fmt.Printf("sum %t || %t = %t\n", a, b, a || b)
}

func negation(a bool) {
    fmt.Printf("negation !%t  = %t\n", a, !a)
}

func main() {
    zero := false
    one := true

    product(zero, zero)
    product(zero, one)
    product(one, zero)
    product(one, one)

    sum(zero, zero)
    sum(zero, one)
    sum(one, zero)
    sum(one, one)
    
    negation(zero)
    negation(one)
}
	a:=3
	b:=1
	c:=2
	d:=0b10101010
	e:=0b01010101
	fmt.Printf("product: %d & %d = %d\n", a, b, a & b)
	fmt.Printf("sum: %d | %d = %d\n", b, c, b | c)
	fmt.Printf("sum modulo 2 (xor) %d ^ %d = %d\n", b, c, b ^ c)
	fmt.Printf("negation ^ %d = %d\n", b, ^b & 1 )
	fmt.Printf("negation ^ %b = %08b\n", d, (^d) & 0xff )
	fmt.Printf("d=%08b e=%08b\n", d, e )

}
