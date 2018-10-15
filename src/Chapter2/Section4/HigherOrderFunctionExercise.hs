module Chapter2.Section4.HigherOrderFunctionExercise where

-- please define a tail call fib

fib :: Int -> Int
fib n = go n 0 1
  where
    go 0 a b = a
    go n a b = go (n - 1) b (a + b)