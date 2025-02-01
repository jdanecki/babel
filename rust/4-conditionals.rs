fn main() {
    let number1 = 2;
    let number2 = 3;

    if number1 < number2 {
        println!("{} < {} -> {}", number1, number2, number1 < number2);
    }
    println!("{} > {} -> {}", number1, number2, number1 > number2);

    println!("is {} == {}? ", number1, number1);
    if number1 == number1 {
        println!("yes");
    }

    println!("is {} != {}? ", number1, number2);
    if number1 != number2 {
        println!("yes");
    }

    println!("is it not true that {} == {}? ", number1, number2);
    if !(number1 == number2) {
        println!("yes");
    }

    println!("is it true that {} == {} -> {}", number1, number1, if number1 == number1 { "yes" } else { "no" });
}
