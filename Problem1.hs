import Data.List
main :: IO ()
main = do
  putStr "Problem 1:"
  print problem1
-- | Problem 1: Sum of multiples of 3 & 5 to 1000
problem1 :: Int
problem1 = sum $ union (takeWhile (<1000) $ map (*3) [1..]) (takeWhile (<1000) $ map (*5) [1..])
