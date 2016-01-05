defmodule PF.PrimeFactors do
  def prime_factors(1) do
    []
  end
  def prime_factors(num) do
    case num do
      num -> case hd(for(divisor <- 2..num, rem(num,divisor)==0, do: divisor)) do
               d when d == num -> [num]
               d -> [d] ++ prime_factors(div(num,d))
             end
    end
  end
end
