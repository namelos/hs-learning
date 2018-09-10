{-# LANGUAGE DeriveFoldable #-}

module Chapter3.Section1.LinkedList where

data List' a = Cons a (List' a) | Empty deriving (Foldable, Show)

sum' :: List' Int -> Int
sum' = foldl (+) 0

product' :: List' Double -> Double
product' = foldl (*) 1