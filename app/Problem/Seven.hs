module Problem.Seven where

-- Flatten a nested list structure.
-- Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).

data NestedList a = Elem a | List [NestedList a]

-- flatten (Elem 5) == [5]
-- flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) == [1,2,3,4,5]
-- flatten (List []) == []

flatten :: NestedList a -> [a]
flatten (Elem a) = [a]
flatten (List []) = []
flatten (List (first:rest)) =
    let
        flattenList :: [NestedList a] -> [a]
        flattenList [] = undefined
        flattenList [Elem a] = [a]
        flattenList [List a] = flattenList a
        flattenList (first:rest) = flatten first ++ flattenList rest
    in flatten first ++ flattenList rest
