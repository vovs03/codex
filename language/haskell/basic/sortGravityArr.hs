-- Module SortArr where

-- при вводе литеры получаем операцию на массивом 

import Data.List

sortArr :: Char -> [Int] -> [Int]
sortArr chr xs
  | chr == 'R' = reverse (sort xs)
  | chr == 'S' = sort xs
--  | otherwise = "Incorrect Char"

