struct Car {
    brand: String,
    year_of_production: i32,
}

impl Car {
    fn show(&self) {
        println!("brand: {}", self.brand);
        println!("year of production: {}", self.year_of_production);
    }
}

fn main() {
    let volvo = Car {
        brand: String::from("volvo v40"),
        year_of_production: 2010,
    };

    volvo.show();
}