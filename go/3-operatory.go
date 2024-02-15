package main

import "fmt"

func main() {
	var liczba1 = 2
	var liczba2 = 3
	var liczba3 float64 = float64(liczba1) / float64(liczba2)

	fmt.Printf("%d + %d=%d\n", liczba1, liczba2, liczba1+liczba2)
	fmt.Printf("%d - %d=%d\n", liczba1, liczba2, liczba1-liczba2)
	fmt.Printf("%d * %d=%d\n", liczba1, liczba2, liczba1*liczba2)
	fmt.Printf("%d / %d=%d\n", liczba1, liczba2, liczba1/liczba2)
	fmt.Printf("%d / %d=%f\n", liczba1, liczba2, float64(liczba1)/float64(liczba2))
	fmt.Printf("liczba3=%f\n", liczba3)
	liczba1++
	fmt.Printf("liczba1++=%d\n", liczba1)
}
