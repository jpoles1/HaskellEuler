main :: IO ()
main = do
  putStr "Problem 6:"
  print $ problem6 100
-- | Problem 6: Difference between square of sum of 1-100 and sum of squares of 1-100
problem6 :: Int -> Int
problem6 n = ((^2) $ sum [1..n]) - sum [x^2 | x<-[1..n]]
