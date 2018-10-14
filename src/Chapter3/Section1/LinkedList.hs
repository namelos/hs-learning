{-# LANGUAGE DeriveFoldable #-}
{-
  This is language extension,
  you can enable advanced language feature by
  add magic comments like this.

  With DeriveFoldable extension enabled you can implement your data
  as an instance of typeclass Foldable automatically.
  Which makes your data structure could be folded
  (fold is called reduce in most of languages)
 -}

module Chapter3.Section1.LinkedList where

data List' a = Cons a (List' a) | Empty deriving (Foldable, Show)

-- Pattern matching works a bit like a fancy switch
-- deep into data structures
-- Empty matches when the value is exactly Empty
-- (Cons x xs) matches like (Cons 1 (Cons 2 Empty))
-- and x will be 1 and xs will be Cons 2 Empty
-- _ can match any value and discard it
sum' :: List' Int -> Int
sum' Empty = 0
sum' (Cons x xs) = x + sum' xs

sum'' :: List' Int -> Int
sum'' x = case x of
  Empty -> 0
  (Cons x xs) -> x + sum'' xs

-- Can also use fold to implement sum directly
sum''' :: List' Int -> Int
sum''' = foldl (+) 0

product' :: List' Double -> Double
product' Empty = 1
product' (Cons x xs) = x * product' xs

product'' :: List' Double -> Double
product'' = foldl (*) 1
