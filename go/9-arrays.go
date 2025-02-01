package main
import "fmt"

const size=10
const size_x= 2
const size_y=5

func main() {
    var array[size] int
    var sheet[size_y][size_x] int
    
    for i:= 0; i < size; i++ {
       array[i] = 100+i
       fmt.Printf("array[%d]=%d\n", i, array[i])
    }

    for y:=0; y < size_y; y++ {
        for x:=0; x < size_x; x++ {
            sheet[y][x] = 10*y+x
            fmt.Printf("sheet[%d][%d] = %d\n", y, x, sheet[y][x])
		}
	}
}
