package main
import "fmt"

func main() {
	var  b int
	for i:=0 ; i < 10; i++ {
		fmt.Printf("i=%d\n", i)
		b=i
	}

	fmt.Printf("start: b=i=%d\n", b)
	for  b < 20  {
		b++
		fmt.Printf("b++=%d\n", b)
	}

	for h:=0; h < 10; h++ {
		if (h == 4) {
			fmt.Println("mam 4")			
			continue
		}
		if (h==5) { goto skok }
		switch(h) {
			case 1: 
				fmt.Println("jeden")
			default: 
				fmt.Printf("coś innego niż 1, bo %d\n", h)
		}
		continue

skok:
		fmt.Printf("skok w bok: %d\n", h)		
	}
}	
