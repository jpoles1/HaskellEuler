import Data.List
import Data.Numbers.Primes
main :: IO ()
main = do
  putStr "Problem 5:"
  print $ problem5
-- | Problem 5: Smallest Multiple of all numbers between 1:20. I got lazy and cheated. Took the prime factors and took the largest number needed for each prime and did the product
problem5 :: Int
problem5 = 2^4 * 3^2 *5 * 7 * 11* 13* 17 * 19
primeCt :: Int -> [(Int, Int)]
primeCt num = sort . map (\x -> (head x, length x)) $ group . primeFactors $ num
