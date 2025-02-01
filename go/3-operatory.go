package main

import "fmt"

func main() {
	var number1 = 2
	var number2 = 3
	var number3 float64 = float64(number1) / float64(number2)

	fmt.Printf("%d + %d=%d\n", number1, number2, number1+number2)
	fmt.Printf("%d - %d=%d\n", number1, number2, number1-number2)
	fmt.Printf("%d * %d=%d\n", number1, number2, number1*number2)
	fmt.Printf("%d / %d=%d\n", number1, number2, number1/number2)
	fmt.Printf("%d / %d=%f\n", number1, number2, float64(number1)/float64(number2))
	fmt.Printf("number3=%f\n", number3)
	number1++
	fmt.Printf("number1++=%d\n", number1)
}
