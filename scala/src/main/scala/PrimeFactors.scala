package com.crebma.primeFactors

object PrimeFactors {

  def factors(num: Int) : List[Int] = num match {
    case 1 => List[Int]()
    case 2 => List(num)
    case _ =>
      var d = 2;
      while (num%d != 0) {
        d = d + 1
      }
      if (num == d) {
        List(num);
      }
      else {
        List.concat(List(d), factors(num/d));
      }
  }

}
