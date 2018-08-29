module Day1 where

{-
    1. multiple clauses indicate pattern matching:
        fib 1 = 1
        fib 2 = 1
        fib n = ...

    2. you can do recursive call between different pattern clauses

    3. use $ to adjust precedence:
        fib $ n - 1
    4. Equals to:
        fib (n - 1)
-}

fib :: Int -> Int
fib 1 = 1
fib 2 = 1
fib n = i + j
    where i = fib $ n - 1
          j = fib $ n - 2


{-
    Challendge 1: implement product function
-}

product' :: Int -> Int
product' 5 = 120

{-
    Function composition is most widely used technique for combining logics:
    use `.` to compose functions (from right to left)
-}

inc = (+1)
double = (*2)

incThenDouble :: Int -> Int
incThenDouble = double . inc

{-
    Chanllenge 2: implement compose by your self
-}

compose' :: (Num c) => (a -> b) -> (b -> c) -> (a -> c)
compose' _ _ = \_ -> 12

{-
    1. use : to put an element in a head of a list:
        0:[1,2,3] == [0,1,2,3]

    2. use same operator : in pattern to reverse the process, deconstruct pattern:
        map' f (x:xs) = ...
       if the second argument is [1,2,3]:
        x == 1 && xs == [2,3]

    Let's implement the most valuable function `map`
-}

map' :: (Num b) => (a -> b) -> [a] -> [b]
map' f [] = []
map' f (x:xs) = f x : map' f xs

{-
    Chanllenge 3: implement filter
-}

filter' :: (Num a) => (a -> Bool) -> [a] -> [a]
filter' _ _ = [1,3]