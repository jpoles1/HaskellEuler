main :: IO ()
main = do
  putStr "Problem 19:"
  print $ problem19
-- | Problem 19: Difference between square of sum of 1-100 and sum of squares of 1-100
problem19 :: Int
problem19 = undefined
leapYears :: [Int] -> [Bool]
leapYears years = [isLeapYear year | year<-years]
daysPerYear :: [[Int]]
daysPerYear = [daysPerMonth leapyear | leapyear<-leapYears [1900..2000]]
weekdays :: [(String, Int)]
weekdays = zip ["M", "T", "W", "Th", "F", "Sa", "Su"] [1..7]
daysPerMonth :: Bool -> [Int]
daysPerMonth leapyear = [31, febDays leapyear, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
febDays :: Bool -> Int
febDays True = 29
febDays _ = 28
-- | Checks if it is a leap year, given the year
isLeapYear :: Int -> Bool
isLeapYear year
  | year `rem` 100 == 0 = False
  | year `rem` 4 == 0 = True
  | otherwise = False
daysOfWeek = concat $ repeat [1..7]
