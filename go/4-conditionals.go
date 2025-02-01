package main
import "fmt"

func main(){
	number1:=2
	number2:=3

	if (number1 < number2) {
		fmt.Printf("%d < %d -> %d\n", number1, number2, number1 < number2)
	}
	fmt.Printf("%d > %d -> %d\n", number1, number2, number1 > number2)
	
	fmt.Printf("is %d == %d? ", number1, number1)
	if (number1 == number1) { fmt.Println("yes ") }

	fmt.Printf("is %d != %d? ", number1, number2)
	if (number1 != number2) { fmt.Println("yes") }
		
	fmt.Printf("is it false %d == %d? ", number1, number2)
	if (!(number1 == number2)) { fmt.Println("yes") }
	
	fmt.Printf("is ir true %d == %d ->  ", number1, number1)
	if (number1 == number1) { fmt.Println("yes") } else { fmt.Println("no") }
}	
