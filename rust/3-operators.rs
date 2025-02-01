fn main() {
    let number1 = 2;
    let number2 = 3;

    println!("{} + {} = {}", number1, number2, number1 + number2);
    println!("{} - {} = {}", number1, number2, number1 - number2);
    println!("{} * {} = {}", number1, number2, number1 * number2);
    println!("{} / {} = {}", number1, number2, number1 / number2);
    println!("{} / {} = {}", number1, number2, 1.0 * number1 as f64 / number2 as f64);
}
