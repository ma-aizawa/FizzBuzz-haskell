main = fizzbuzz [1..100]

convert :: Integer -> String
convert x | mod x 15 == 0 = "FizzBuzz"
          | mod x  3 == 0 = "Fizz"
          | mod x  5 == 0 = "Buzz"
          | otherwise     = show x

output :: [String] -> IO ()
output [] = return ()
output xs = do
  putStrLn $ head xs
  output $ tail xs

fizzbuzz :: [Integer] -> IO()
fizzbuzz xs = output $ map convert xs

