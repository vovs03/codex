-- stepik 1.4.6
-- 2022-12-14
--

-- dicount: https://stepik.org/lesson/7859/step/11
discount :: Double -> Double -> Double -> Double
discount limit proc sum = 
  if sum >= limit 
  then sum * (100 - proc) / 100
  else sum

standartDiscount :: Double -> Double
standartDiscount = discount 1000 5
