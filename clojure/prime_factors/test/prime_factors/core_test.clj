(ns prime-factors.core-test
  (:require [clojure.test :refer :all]
            [prime-factors.core :refer :all]))

(deftest prime-factors-1
  (is (= (primes 1) [])))
(deftest prime-factors-2
  (is (= (primes 2) [2])))
(deftest prime-factors-3
  (is (= (primes 3) [3])))
(deftest prime-factors-4
  (is (= (primes 4) [2 2])))
(deftest prime-factors-5
  (is (= (primes 5) [5])))
(deftest prime-factors-6
  (is (= (primes 6) [2 3])))
(deftest prime-factors-7
  (is (= (primes 7) [7])))
(deftest prime-factors-8
  (is (= (primes 8) [2 2 2])))
(deftest prime-factors-9
  (is (= (primes 9) [3 3])))
(deftest prime-factors-10
  (is (= (primes 10) [2 5])))
(deftest prime-factors-1980
  (is (= (primes 1980) [2 2 3 3 5 11])))
(deftest prime-factors-1792560
  (is (= (primes 1792560) [2 2 2 2 3 5 7 11 97])))
