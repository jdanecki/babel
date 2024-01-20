package main
import "fmt"

const rozmiar=10
const rozmiar_x= 2
const rozmiar_y=5


func main() {
	var tablica[rozmiar] int
	var kartka[rozmiar_y][rozmiar_x] int
	
	for i:= 0; i < rozmiar; i++ {
	   tablica[i] = 100+i
	   fmt.Printf("tablica[%d]=%d\n", i, tablica[i])
	}

	for  y:=0; y < rozmiar_y; y++	{
		for x:=0; x < rozmiar_x; x++ {
			kartka[y][x] = 10*y+x
			fmt.Printf("kartka[%d][%d] = %d\n", y, x, kartka[y][x])
		}
	}
}
