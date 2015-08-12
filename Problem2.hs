import Data.List
main :: IO ()
main = do
  putStr "Problem 2:"
  print problem2
-- | Problem 2: Sum of even Fibonacci numbers to 4 million
problem2 :: Int
problem2 = sum . filter even . takeWhile (< 4000000) $ map fibonacci [1..]
-- | Fibonacci Sequence
fibonacci :: Int -> Int
fibonacci 1 = 1
fibonacci 2 = 2
fibonacci n = fibonacci (n-1) + fibonacci (n-2)
