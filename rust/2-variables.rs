fn main() {
    let string = "hello";
    let character = 'a';

    let number1 = 123;
    let mut number2 = 124;

    let pointer1=&number1 as * const i32;
    let pointer2=&mut number2 as * mut i32;

    unsafe {
        println!("string={} number1={} number2={} character={}", string, number1, number2, character);
        println!("pointer1={:p} value at pointer1={}",pointer1, *pointer1);
        println!("pointer2={:p} value at pointer2={}",pointer2, *pointer2);

        *pointer2 = 456;
        println!("pointer2={:p} value at pointer2={}",pointer2, *pointer2);
    }

    enum Month {
        January,
//        February,
        May = 5,
        June,
    }

    let s = Month::January;
    let m = Month::May;
    let c = Month::June;

    println!("months: January={:?} May={:?} June={:?}", s as i32, m as i32, c as i32);
}
