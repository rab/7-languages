fn prime_factors(num: i64) -> Vec<i64> {
    let mut v : Vec<i64> = vec![];

    if num == 1 {
        return v;
    }
    else {
        let mut divisor = 2;
        while (num % divisor) != 0 {
            divisor = divisor + 1;
            if divisor > num { break; }
        }
        if (num % divisor) == 0 {
            v.push(divisor);
            if divisor != num {
                v.append(&mut prime_factors(num / divisor));
            }
        }
        v
    }
}

#[test]
fn prime_factors_of_1() {
    assert_eq!(prime_factors(1), []);
}
#[test]
fn prime_factors_of_2() {
    assert_eq!(prime_factors(2), [2]);
}
#[test]
fn prime_factors_of_3() {
    assert_eq!(prime_factors(3), [3]);
}
#[test]
fn prime_factors_of_4() {
    assert_eq!(prime_factors(4), [2,2]);
}
#[test]
fn prime_factors_of_5() {
    assert_eq!(prime_factors(5), [5]);
}
#[test]
fn prime_factors_of_6() {
    assert_eq!(prime_factors(6), [2,3]);
}
#[test]
fn prime_factors_of_7() {
    assert_eq!(prime_factors(7), [7]);
}
#[test]
fn prime_factors_of_8() {
    assert_eq!(prime_factors(8), [2,2,2]);
}
#[test]
fn prime_factors_of_9() {
    assert_eq!(prime_factors(9), [3,3]);
}
#[test]
fn prime_factors_of_10() {
    assert_eq!(prime_factors(10), [2,5]);
}
#[test]
fn prime_factors_of_1980() {
    assert_eq!(prime_factors(1980), [2,2,3,3,5,11]);
}
#[test]
fn prime_factors_of_1792560() {
    assert_eq!(prime_factors(1792560), [2,2,2,2,3,5,7,11,97]);
}
