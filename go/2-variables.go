package main
import "fmt"
// comment

/* 
 * long comment
 * on multiple lines
 */

func main() {
    var str string ="hello"
    var number int =123

    var char uint8 ='a'
    var str1="world"
    const constant int =10
    a:=11.10

    fmt.Println(number)
    fmt.Println(str1)
    fmt.Println(constant)
    fmt.Println(a)
    fmt.Printf("types: number=%T char=%T str=%T a=%T\n", number, char, str, a);
    fmt.Printf("number=%d char=%c char=%d str=%s a=%f\n", number, char, char, str, a);

    var pointer *int = &number
    var truth = true
    fmt.Printf("truth type is %T\n", truth)
	
		const (
		january = iota
		february
		may=5
		june =iota
	)
	
	fmt.Printf("string=%s number=%d char=%c pointer=%x value at pointer=%d\n", str, number, char, pointer, *pointer);
	*pointer = 456
	fmt.Printf("string=%s number=%d char=%c pointer=%p value at pointer=%d\n", str, number, char, pointer, *pointer);
	
	s:=january
	f:=february
	m:= may
	j:= june
	
	fmt.Printf("months:  january=%d february=%d may=%d june=%d\n",s, f, m, j)
}
