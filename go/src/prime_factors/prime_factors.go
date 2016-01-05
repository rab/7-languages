package prime_factors

func Factors(num int) []int {
        if num == 1 { return []int{} }
	for i := 2; i < num; i++ {
		if num % i == 0 {
			return append([]int{i}, Factors(num/i)...)
		}
	}
        return []int{num}
}
