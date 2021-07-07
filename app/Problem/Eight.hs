module Problem.Eight where

-- Eliminate consecutive duplicates of list elements.
-- If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

compress :: Eq a => [a] -> [a]
compress [] = []
compress [first] = [first]
compress [first, second] = if first == second then [second] else [first, second]
compress (first:second:rest) =
    let firstPass = compress [first, second]
    in case firstPass of
        [a] -> compress (a:rest)
        [a, b] -> a : compress (b:rest)
        _ -> undefined

-- compress [1, 2, 3, 3, 4, 5] == [1, 2, 3, 4, 5]
-- compress "aaaabccaadeeee" == "abcade"
