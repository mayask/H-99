module Problem2 where

myButLast :: [a] -> a
myButLast [] = error "empty list"
myButLast [_] = error "list with only one element"
myButLast [x, _] = x
myButLast (_ : xs) = myButLast xs
