rightLeft :: Char -> String
rightLeft chr
  | chr == 'R' = "Right!"
  | chr == 'L' = "Left!"
  | otherwise = "Incorrect Char"
