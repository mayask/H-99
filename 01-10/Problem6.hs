module Problem6 where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome [x, y] = x == y
isPalindrome xs = head xs == last xs && isPalindrome rest
  where
    rest = init . tail $ xs
