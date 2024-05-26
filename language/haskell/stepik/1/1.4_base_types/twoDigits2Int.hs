
ti :: Int -> Int -> Int
ti x y
  | x y = tens + units
  | otherwise = 100
  where
    tens  == x = x * 10
    units == y = y
