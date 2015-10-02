main :: IO ()
main = do
  putStr "Problem 20:"
  print $ problem20 100
-- | Problem 6: Sum of digits in 100!
problem20 :: Integer -> Integer
problem20 n = numsum $ factorial n
factorial :: Integer -> Integer
factorial 1 = 1
factorial 2 = factorial 1 * 2
factorial n = factorial (n-1) * n
numsum :: Integer -> Integer
numsum = sum . digits
digits :: Integer -> [Integer]
digits = map (read . return) . show
