package main
import "fmt"

type samochod struct {
	marka string
	rok_produkcji int
}

func pokaz(s *samochod) {
	fmt.Printf("marka: %s\n", s.marka)
	fmt.Printf("rok produkcji: %d\n", s.rok_produkcji)
}

func main() {
	var volvo samochod
	
	volvo.marka = "volvo v40"
	volvo.rok_produkcji = 2010

	pokaz(&volvo)
}
