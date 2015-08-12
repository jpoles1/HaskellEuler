import Data.Numbers.Primes
main :: IO ()
main = do
  putStr "Problem 7:"
  print problem7
-- | Problem 7: Find 10001st prime
problem7 :: Int
problem7 = last $ take 10001 primes
