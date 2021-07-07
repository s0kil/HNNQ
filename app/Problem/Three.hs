module Problem.Three where

-- Find the K'th element of a list. The first element in the list is number 1.

elementAt :: [a] -> Int -> a
elementAt list targetIndex =
    let
        stepUp [] index = undefined
        stepUp (first:rest) index =
            if targetIndex == index
            then first
            else stepUp rest (index + 1)
    in
        stepUp list 1
