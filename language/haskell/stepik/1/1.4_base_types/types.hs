:t 3
-- 3 :: Num a => a


x = 3
-- ghci
:type x
-- x :: Int
--

let y = 3 :: Double
-- :t y
-- y :: Double
--

let z = y + 17 -- 17 может быть полиморфным
-- :t z
-- z :: Double
--

--- FRACTIONAL содержит [Double, Float]
-- :t 3.5
-- 3.5 Fractional a => a
--

1234345645645645645645645645645645 :: Integer


-- Bool
--
-- t: (&&) ## Логическое И Вернёт Истину: когда оба Тру
-- -> Правоассоциативный
-- (&&) :: Bool -> Bool -> Bool


