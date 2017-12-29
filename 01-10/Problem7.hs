module Problem7 where

data NestedList a = Elem a | List [NestedList a]
  deriving (Show)

flatten :: NestedList a -> [a]
flatten (Elem x) = [x]
flatten (List xs) = go xs
  where
    go [] = []
    go (Elem y : ys) = y : go ys
    go (List [] : ys) = go ys
    go (List (y : ys) : yss) = flatten y ++ go ys ++ go yss
