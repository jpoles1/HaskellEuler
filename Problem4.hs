import Data.List
main :: IO ()
main = do
  putStr "Problem 4:"
  print problem4
-- | Problem 4: Find the largest palindrome made from the product of two 3-digit #s
problem4 :: Int
problem4 = head $ dropWhile (\x -> show x /= reverse (show x)) opt
  where opt = sortBy (flip compare) [x*y | x<-[1..999], y<-[1..999]]
