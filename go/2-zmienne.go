package main
import "fmt"
// komentarz

/* 
 * długi komentarz
 * na kilka linii
 */

func main() {
	var str string ="hello"
	var liczba int =123

	var znak uint8 ='a'
	var str1="world"
	const stala int =10
	a:=11.10

	fmt.Println(liczba)
	fmt.Println(str1)
	fmt.Println(stala)
	fmt.Println(a)
	fmt.Printf("typy: liczba=%T znak=%T str=%T a=%T\n", liczba, znak, str, a);
	fmt.Printf("liczba=%d znak=%c znak=%d str=%s a=%f\n", liczba, znak, znak, str, a);

	var  wskaznik *int = &liczba
	var prawda = true
	fmt.Printf("prawda type to %T\n", prawda)
	
	const (
		styczen = iota
		luty
		maj=5
		czerwiec =iota
	)

	fmt.Printf("string=%s liczba=%d znak=%c wskaźnik=%x wartość pod wskaźnikiem=%d\n", str, liczba, znak, wskaznik, *wskaznik);
	*wskaznik = 456
	fmt.Printf("string=%s liczba=%d znak=%c wskaźnik=%p wartość pod wskaźnikiem=%d\n", str, liczba, znak, wskaznik, *wskaznik);

	s:=styczen
	l:=luty
	m:= maj
	c:= czerwiec

	fmt.Printf("miesiące:  styczen=%d luty=%d maj=%d czerwiec=%d\n",s, l, m, c)

}
