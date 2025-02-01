fn main() {
    let mut b=0;
    let mut c;
    let mut d;
    let mut e;
    let mut f;
    let mut g = 0;

    for i in 0..10 {
        println!("i={}", i);
        b = i;
    }

    println!("start: b=i={}", b);
    while b < 20 {
        println!("b++={}", b);
        b += 1;
    }

    println!("start: c=b={}", b);
    c = b;
    while c < 30 {
        c += 1;
        println!("++c={}", c);
    }

    println!("start: d=c, e=c={}", c);
    d = c;
    e = c;
    while d < 40 {
        d += 1;
        e += 1;
        println!("++d={} e++={}", d, e);
    }

    f = e;
    println!("start: f=e={}", e);
    while e < 50 {
        e += 1;
        e -= 1;
        f -= 1;
        f += 1;
        println!("++e={} e--={} f--={} ++f={}", e, e, f, f);
        g += 1;
        if g > 10 {
            break;
        }
    }

    println!("start: g={}", g);
    while g > 0 {
        println!("g--={}", g);
        g -= 1;
    }

    for h in 0..10 {
        if h == 4 {
            println!("I've got 4");
            continue;
        }
        if h == 5 {
            println!("side jump: {}", h);
            continue;
        }
        match h {
            1 => println!("one"),
            _ => println!("something other than 1, because {}", h),
        }
    }
}
