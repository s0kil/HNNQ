module Problem.Five where

-- Reverse a list.

myReverse :: [a] -> [a]
myReverse [] = []
myReverse [first] = [first]
myReverse (first:rest) = myReverse rest ++ [first]
