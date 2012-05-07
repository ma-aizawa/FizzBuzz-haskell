f :: Integer -> [Char]
f x | mod x 15 == 0 = "FizzBuzz"
    | mod x  3 == 0 = "Fizz"
    | mod x  5 == 0 = "Buzz"
    | otherwise     = show x

o :: [String] -> IO ()
o [] = return ()
o xs = do
  putStrLn $ head xs
  o $ tail xs

fizzbuzz :: [Integer] -> IO()
fizzbuzz xs = o $ map f xs
