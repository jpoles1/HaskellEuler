import Data.Char
main :: IO ()
main = do
  putStr "Problem 16:"
  print $ problem16 1000
-- | Problem 16: sum of digits in 2^1000
problem16 :: Int -> Int
problem16 n = sum . map digitToInt . show $ 2^n
