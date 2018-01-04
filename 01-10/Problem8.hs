module Problem8 where

compress :: Eq a => [a] -> [a]
compress [] = []
compress (x : xs) = go x xs
  where
    go y [] = [y]
    go y (z : zs)
      | y == z    = go z zs
      | otherwise = y : go z zs
