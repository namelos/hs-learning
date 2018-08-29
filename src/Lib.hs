module Lib
    ( someFunc
    , add
    , isSorted
    , fib
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

add :: Int -> Int -> Int
add x y = x + y

isSorted :: (a -> a -> Bool) -> [a] -> Bool
isSorted f [] = True
isSorted f [x] = True
isSorted f (x:y:xs) =
    if f x y == True
        then isSorted f (y:xs)
        else False

fib :: Int -> Int
fib 1 = 1
fib 2 = 1
fib x = m + n
    where m = fib $ x - 1
          n = fib $ x - 2