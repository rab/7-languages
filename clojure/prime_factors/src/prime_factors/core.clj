(ns prime-factors.core)

(defn primes [num]
  (cond (= 1 num) []
        (zero? (mod num 2)) (into [2] (primes (/ num 2)))
        (> num 2) (if-let [divisor (first (filter #(zero? (mod num %)) (range 3 num 2)))]
                    (into [divisor] (primes (/ num divisor)))
                    [num]
                    )
        ))
