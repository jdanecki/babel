package main
import "fmt"

func iloczyn(a, b bool) {
	fmt.Printf("iloczyn %d && %d = %d\n", a, b, a && b)
}

func suma(a, b bool) {
	fmt.Printf("suma %d || %d = %d\n", a, b, a || b)
}

func negacja(a bool) {
	fmt.Printf("negacja !%d  = %d\n", a, !a)
}


func main() {
	zero:=false
	jeden:=true

	iloczyn(zero, zero)
	iloczyn(zero, jeden)
	iloczyn(jeden, zero)
	iloczyn(jeden, jeden)

	suma(zero, zero)
	suma(zero, jeden)
	suma(jeden, zero)
	suma(jeden, jeden)
	
	negacja(zero)
	negacja(jeden)

	a:=3
	b:=1
	c:=2
	d:=0b10101010
	e:=0b01010101
	
	fmt.Printf("iloczyn: %d & %d = %d\n", a, b, a & b)
	fmt.Printf("suma: %d | %d = %d\n", b, c, b | c)
	fmt.Printf("suma modulo 2 (xor) %d ^ %d = %d\n", b, c, b ^ c)
	fmt.Printf("negacja ^ %d = %d\n", b, ^b & 1 )
	fmt.Printf("negacja ^ %b = %08b\n", d, (^d) & 0xff )
	fmt.Printf("d=%08b e=%08b\n", d, e )

}
