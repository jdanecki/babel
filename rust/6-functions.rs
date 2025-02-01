fn add(a: i32, b: i32) -> i32 {
    a + b
}

fn echo(e: i32) {
    println!("echo e={}", e);
    if e > 1 {
        echo(e - 1);
    }
}

fn increment(what: &mut i32, to: &mut i32) {
    println!("increment: received *what={} *to={}", *what, *to);
    *what += 1;
    *to += 1;
    println!("increment: returning *what={} *to={}", *what, *to);
}

fn main() {
    let mut a = 2;
    let mut b = 3;

    println!("{} + {} = {}", a, b, add(a, b));

    echo(10);

    let operation = add;
    println!("result of operation on {} and {} = {}", a, b, operation(a, b));

    println!("a = {} b = {}", a, b);
    increment(&mut a, &mut b);
    println!("a after increment = {}", a);
    println!("b after increment = {}", b);
}