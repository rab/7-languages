module PrimeFactors (primeFactors) where

-- divpairs :: Integer -> [Integer]
-- divpairs f = [f, div f]

primeFactors :: Integer -> [Integer]
primeFactors x
  | x == 1 = []
  | mod x 2 == 0 = 2:primeFactors (div x 2)
  | otherwise = let divisors = filter (\e -> 0 == mod x e) [3..x]
                    smallest = head divisors
                in smallest:primeFactors (div x smallest)
