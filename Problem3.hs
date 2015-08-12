import Data.List
main :: IO ()
main = do
  putStr "Problem 3:"
  print problem3
-- Problem 3: Prime factors of 600851475143
problem3 :: Int
problem3 = maximum $ primefactors [600851475143] []
-- | Prime Factorization
primefactors :: [Int] -> [Int] -> [Int]
primefactors [] prime = prime
primefactors nonprime prime = undefined
  where primes = findPrimes 1000
-- | Prime numbers, immediately exclude all evens except 2.
findPrimes :: Int -> [Int]
findPrimes n = erossieve 1 (2:[3,5..n])
-- | Sieve of Erosthanese
erossieve :: Int -> [Int] -> [Int]
erossieve num sieve
  | null sieve || num > maximum sieve = []
  | num `elem` sieve = num : erossieve (num+1) (filter (divis num) sieve)
  | otherwise = erossieve (num+1) sieve
  where divis divnum = (\x -> (mod x divnum) /= 0)
-- Add an element to the list if it is not divisible by any number
