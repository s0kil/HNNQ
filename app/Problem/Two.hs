module Problem.Two where

-- Find the last but one element of a list.

myButLast :: [a] -> a
myButLast [] = undefined
myButLast [a] = a
myButLast [a, b] = a
myButLast (_:rest) = myButLast rest
