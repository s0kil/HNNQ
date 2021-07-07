module Problem.Four where

-- Find the number of elements of a list.

myLength :: [a] -> Int
myLength [] = 0
myLength [_] = 1
myLength (first:rest) = 1 + myLength rest
