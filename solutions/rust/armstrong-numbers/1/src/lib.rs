pub fn is_armstrong_number(num: u32) -> bool {
    // convert the number to vectorized digits
    let digits: Vec<u32> = num
        .to_string()
        .chars()
        .map(|c| c.to_digit(10).unwrap())
        .collect();

    let power = digits.len() as u32;

    // Accumulate in u64 so large 9-digit inputs don't overflow
    let sum: u64 = digits.iter().map(|&d| (d as u64).pow(power)).sum();

    // make the armstrong check and return the boolean
    sum == num as u64
}
