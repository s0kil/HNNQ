module Problem.Six where

-- Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

isPalindrome :: Eq a => [a] -> Bool
isPalindrome list = reverse list == list
