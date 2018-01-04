module Problem9 where

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x : xs) = (x : takeWhile (== x) xs) : pack (dropWhile (== x) xs)
