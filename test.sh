say () { echo "\n== ${1} ========================================\n\n" ;}

say ruby
(cd ruby ; bundle install ; bundle exec rspec prime_factors_spec.rb )

say clojure
(cd clojure/prime_factors/ ; lein test)

say haskell
# cabal update && cabal install hunit
(cd haskell/ ; echo main | ghci PrimeFactors_Test.hs)

say rust
(cd rust ; cargo test)

say scala
(cd scala/ ; sbt test)

say elixir
(cd elixir/prime_factors/ ; mix test)

say go
(cd go/ ; ginkgo)
