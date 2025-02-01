fn main() {
    let size = 10;
    let size_x = 2;
    let size_y = 5;

    let mut array = [0; 10];
    let mut sheet = [[0; 2]; 5];

    for i in 0..size {
        array[i] = 100 + i;
        println!("array[{}]={}", i, array[i]);
    }

    for y in 0..size_y {
        for x in 0..size_x {
            sheet[y][x] = 10 * y + x;
            println!("sheet[{}][{}] = {}", y, x, sheet[y][x]);
        }
    }
}