main :: IO ()
main = do
  putStr "Problem 3:"
  print problem3
-- Problem 3: Prime factors of 600851475143
problem3 :: Int
problem3 = maximum $ primefactors [600851475143] []
-- | Prime Factorization
primes :: [Int]
primes = findPrimes 10000
primefactors :: [Int] -> [Int] -> [Int]
primefactors [] prime = prime
primefactors nonprime prime = if current `elem` primes then primefactors (tail nonprime) $ current:prime else primefactors (current `div` smallestPrime:tail nonprime) $ smallestPrime:prime
  where current = head nonprime
        smallestPrime = smallestFactor current
-- | Find the smallest prime factor
smallestFactor :: Int -> Int
smallestFactor val = foldl (\acc x -> if val `rem` x == 0 then x else acc) 1 primes
-- | Prime numbers, immediately exclude all evens except 2.
findPrimes :: Int -> [Int]
findPrimes n = erossieve 1 (2:[3,5..n])
-- | Sieve of Erosthanese
erossieve :: Int -> [Int] -> [Int]
erossieve num sieve
  | null sieve || num > maximum sieve = []
  | num `elem` sieve = num : erossieve (num+1) (filter (divis num) sieve)
  | otherwise = erossieve (num+1) sieve
  where divis divnum x = mod x divnum /= 0
-- Add an element to the list if it is not divisible by any number
