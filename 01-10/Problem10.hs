module Problem10 where

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x : xs) = (x : takeWhile (== x) xs) : pack (dropWhile (== x) xs)

encode :: Eq a => [a] -> [(Int, a)]
encode = map encodeOne . pack
  where
    encodeOne [] = error "empty pack"
    encodeOne (x : xs) = (length xs + 1, x)
