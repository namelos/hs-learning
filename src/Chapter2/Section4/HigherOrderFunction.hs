module Chapter2.Section4.HigherOrderFunction where

import Text.Printf
import Chapter2.Section1.SimpleProgram

{- You can define function locally with where -}

factorial :: Int -> Int
factorial n = go n 1
  where go n acc =                  -- use where to define a inner function
          if n <= 0
          then acc
          else go (n - 1) (n * acc) -- in tail position, only return the recursive call value
-- Tail call compiles to interactive loops so it won't easily stack overflow

{- You can also define factorial without tail recurse,
   However it would be memory consuming -}

factorialWithNoTailRec :: Int -> Int
factorialWithNoTailRec 1 = 1
factorialWithNoTailRec n = n * factorialWithNoTailRec (n - 1)

{- A plain function -}

-- say we also have a formatFactorial
formatFactorial :: Int -> String
formatFactorial n =
  printf "The factorial of %d is %d" n (factorial n)


{- A higher-order function -}

-- a higher-order function is a function take other functions as parameters

-- then we can abstract the function as parameter
-- use (Int -> Int) to indicate function signature
formatResult :: (Int -> Int) -> String -> Int -> String
formatResult f name n =
  printf "The %s of %d is %d" name n (f n)