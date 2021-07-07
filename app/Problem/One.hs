module Problem.One where

-- Find the last element of a list.

myLast :: [a] -> a
myLast [] = undefined
myLast [a] = a
myLast (first:rest) = myLast rest
