package main
import "fmt"

func main(){
	liczba1:=2
	liczba2:=3

	if (liczba1 < liczba2) {
		fmt.Printf("%d < %d -> %d\n", liczba1, liczba2, liczba1 < liczba2)
	}
	fmt.Printf("%d > %d -> %d\n", liczba1, liczba2, liczba1 > liczba2)
	
	fmt.Printf("czy %d == %d? ", liczba1, liczba1)
	if (liczba1 == liczba1) { fmt.Println("tak ") }

	fmt.Printf("czy %d != %d? ", liczba1, liczba2)
	if (liczba1 != liczba2) { fmt.Println("tak") }
		
	fmt.Printf("czy to nieprawda, że %d == %d? ", liczba1, liczba2)
	if (!(liczba1 == liczba2)) { fmt.Println("tak") }
	
	fmt.Printf("czy to prawda, że %d == %d ->  ", liczba1, liczba1)
	if (liczba1 == liczba1) { fmt.Println("tak") } else { fmt.Println("nie") }
}	
