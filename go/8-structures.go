package main
import "fmt"
type car struct {
    brand string
    year_of_production int
}

func show(s *car) {
    fmt.Printf("brand: %s\n", s.brand)
    fmt.Printf("year of production: %d\n", s.year_of_production)
}

func main() {
    var volvo car
    
    volvo.brand = "volvo v40"
    volvo.year_of_production = 2010

    show(&volvo)
}
