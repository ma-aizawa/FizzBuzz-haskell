main = fizzbuzz [1..100]

convert :: Integer -> String
convert x | mod x 15 == 0 = "FizzBuzz"
          | mod x  3 == 0 = "Fizz"
          | mod x  5 == 0 = "Buzz"
          | otherwise     = show x

fizzbuzz :: [Integer] -> IO()
fizzbuzz xs = mapM_ putStrLn $ map convert xs

