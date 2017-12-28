module Problem3 where

elementAt :: [a] -> Int -> a
elementAt xs n = case drop (n - 1) . take n $ xs of
  [] -> error "index not in range"
  x  -> head x
